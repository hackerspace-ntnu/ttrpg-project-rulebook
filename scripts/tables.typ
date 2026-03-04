#import "./glossary.typ": term, glossary_types


#let encounterTable(data, dice) = {
table(
  columns: 3,
  table.header(dice, "Result", "Description"),
  // caption: [data.caption],
  ..data.effects.keys().enumerate(start: 1).map(((i, key)) => (
    [#i],
    key,
    data.effects.at(key).description,
  )).flatten(),
)}

// TODO: Add separators for ranged and shields.
#let weaponTable(data, abilities) = {
  table(
    columns: (20%, 11%, 49%, 20%),
    align: (left, left, left, left),
    table.header([Name], [Roll], [Active\* (1 #term[Focus])], [Tags]),
    table.hline(),
    ..data.weapons.map((entry) => {
    let ability = abilities.at(entry.ability)
    (
      entry.name,
      if (entry.attributes == none) {}
      else {entry.attributes.join(" + ")},
      ability.name + ":\n" + ability.description,
      if (entry.tags == none) {}
      else {entry.tags.join("\n")},
    )}).flatten(),
  )
}

#let weaponTagsTable(data) = {
  table(
    columns: (30%, 70%),
    table.header([Name], [Effect]),
    table.hline(),
    ..data.map((entry) => (
      term(entry.name, is_definition: true),
      entry.description,
    )).flatten(),
  )
}

#let mutationsTable(mutations, abilities, tier: none) = {
  let entries = mutations.values().filter((entry) => {
    if (tier == none) {
      return true
    }
    else {
      return tier == entry.category
    }
  }).sorted(key: it => (it.tier))
  columns(2,
  gutter: 3em,
  block(
  for entry in entries {
    block(
      breakable: false,
      fill: color.rgb("#ecd7fa"),
      inset: (x: 1em, y: 1.2em),
      radius: 1em,
      {strong(entry.name) + h(1fr) + "Tier: " + str(entry.tier)
      linebreak()
      if (entry.category == none) {}
      else {
        entry.category 
        linebreak()
      }
      entry.description
      linebreak()
      if (entry.abilities != none) {
        for ability in entry.abilities {
          linebreak()
          let a = abilities.at(ability)
          (
            emph(a.tag + ": " + a.name),
            if (a.tag == "Active") {"AP: " + str(a.ap_cost) + "  Focus: " + str(a.focus_cost) + "\n"} + a.description,
          ).join("\n")
          linebreak()
        }
      }
    })
  }))
}