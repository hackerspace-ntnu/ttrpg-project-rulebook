#let glossary_types = (
  mechanic: "mechanic",
  action: "action",
  condition: "condition",
  item: "item",
)

#let _state_glossary = state("glossary", ())

#let term(name, description, type, separator: ": ", is_definition: false, print: true) = {
  // Add to glossary
  if (is_definition) {
    context {
      // let current_page = 
      let location = here()
      _state_glossary.update(glossary => {
        glossary.push((
          name: name, 
          description: description,
          type: type,
          location: location
          ))
          glossary
      })
    }
  }
  if (print) {
    strong(name) + separator + description
  }
}

#let render_glossary() = {
  context {
    let glossary = _state_glossary.final().sorted(key: it => (it.name, it.type))

    for entry in glossary {
      if (glossary.filter(e => e.name == entry.name).len() > 1) {
        link(entry.location)[#entry.name (#entry.type): p.#entry.location.page()]
      }
      else {
        link(entry.location)[#entry.name: p.#entry.location.page()]
      }
      linebreak()
    }
  }
}

