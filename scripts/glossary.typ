#let glossary_types = (
  mechanic: "mechanic",
  action: "action",
  condition: "condition",
  item: "item",
  faction: "faction",
)

#let _state_glossary = state("glossary", ())

/// Creates a glossary term entry and prints it with emphasis.
/// 
/// - name (string): The name of the term, also used as the key unless `key` is provided.
/// - description (string): A description of the term, printed after the name.
/// - separator (string): A string to separate the name and description when printed.
/// - type (string): The type of the term, used for categorization in the glossary.
/// - is_definition (boolean): Whether this entry is a definition. If true, it takes precedence over non-definition entries with the same name.
/// - print (boolean): Whether to print the term immediately.
/// - key (string): An optional key to use for the term instead of the name, useful for disambiguation.
#let term(name, description: "", glossary_type: glossary_types.mechanic, separator: "", is_definition: false, print: true, key: none) = {
  // Add to glossary
  context {
    // let current_page = 
    let location = here()
    _state_glossary.update(glossary => {
      let entry_name = if key != none { key } else { name }
      if type(entry_name) == content {
        entry_name = entry_name.text
      }
      glossary.push((
        name: entry_name, 
        description: description,
        type: glossary_type,
        location: location,
        is_definition: is_definition,
        ))
        glossary
    })
  }
  if (print) {
    emph(name) + separator + description
  }
}

#let render_glossary() = {
  columns(2,
  context {
    let glossary = _state_glossary.final().fold((:), (acc, entry) => {
      let key = entry.name + "|" + entry.type
      if (key not in acc) {
        entry.locations = ()
        entry.locations.push(entry.location)
        acc.insert(key, entry)
      } else {
        let glossary_entry = acc.at(key, default: none)
        // If both are definitions, keep the first one
        if (not glossary_entry.is_definition and entry.is_definition) {
          // Replace with definition
          glossary_entry.description = entry.description
          glossary_entry.location = entry.location
          glossary_entry.is_definition = true
        }
        glossary_entry.locations.push(entry.location)
        acc.at(key) = glossary_entry
      }
      return acc
    }).values().sorted(key: it => (it.name, it.type))

    for entry in glossary {
      let entry_name = if (glossary.filter(e => e.name == entry.name).len() > 1) {
        entry.name + " (" + entry.type + ")"
      } else {
        entry.name
      }
      [#entry_name: #entry.locations.dedup(key: p => p.page()).map(p => link(p, if p == entry.location { strong([p.#p.page()]) } else { [p.#p.page()] })).join(", ")]
      linebreak()
    }
  })
}

