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

#let weaponTable(data) = {
2
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

#let mutationsTable(mutations, abilities, tier) = {
  table(
    stroke: none,
    
  )
}