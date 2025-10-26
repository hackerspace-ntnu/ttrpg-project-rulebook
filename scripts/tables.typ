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
  table(
    columns: (20%, 11%, 49%, 20%),
    align: (left, left, left, left),
    table.header([], [Roll], [Active\* (1 #term[Focus])], [Tags]),
    table.hline(),
    ..data.map((entry) => (
      entry.name,
      entry.attributes,
      [#entry.active.name:\ #entry.active.description],
      entry.tags.join("\ "),
    )).flatten(),
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