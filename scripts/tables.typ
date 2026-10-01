#import "./glossary.typ": term, glossary_types

#let parseTerms(text) = {
  let terms = text.matches(regex("#term\[(.+)\]"))
  if (terms.len() > 0) {
    let split_text = text.split(regex("#term\[.+\]"))
    split_text.zip(terms.map((entry) => {entry.captures.map((x) => {term[#x]})})).flatten().join()
    split_text.at(-1)
  } else {
    text
  }
}

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

#let weaponTable(data, abilities) = {
  let weapons = data.weapons.map((entry) => {
  let ability = abilities.at(entry.ability, default: none)
  (
    entry.name,
    if (entry.attributes == none) {}
    else {entry.attributes.join(" + ")},
    if (ability == none) {}
    else {ability.name + ":\n" + ability.description},
    if (entry.tags == none) {}
    else {entry.tags.join("\n")},
  )})
  let ranged = data.weapons.position((weapon) => {
    return weapon.tags.any(tag => tag.contains("Ranged"))
  })
  let shields = data.weapons.position((weapon) => {
    return weapon.name.contains("Shield")
  })
  table(
    columns: (20%, 11%, 49%, 20%),
    align: (left, left, left, left),
    table.header([Name], [Roll], [Active\* (1 #term[Focus])], [Tags]),
    table.hline(),
    ..weapons.slice(0, ranged).flatten(),
    [], [], [], [],
    ..weapons.slice(ranged, shields).flatten(),
    [], [], [], [],
    ..weapons.slice(shields).flatten()
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
      return tier == entry.tier
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

#let abilitiesTable(abilities, tier: none) = {
  let entries = abilities.values().filter((entry) => {
    if (entry.name == "") {
      return false
    }
    else if (tier == none) {
      return true
    }
    else {
      return tier == entry.tier
    }
  }).sorted(
    key: it => (it.name)
  ).sorted(key: it => it.at("tier", default: 0)).sorted(
  key: it => {
    if ((it.category) == "General") {
      return "A"
    }
    else {
      return (it.category)
    }
  }
  )
  columns(2,
  gutter: 3em,
  block(
  for entry in entries {
    block(
      breakable: false,
      fill: color.rgb("#d7ebfa"),
      inset: (x: 1em, y: 1.2em),
      radius: 1em,
      {strong(entry.name) + " (" + entry.category + ")" + h(1fr) + "Tier: " + str(entry.at("tier", default: 0))
      linebreak()
      linebreak()
      {emph(entry.tag) + ": "}
      linebreak()
      if (entry.ap_cost != 0 or entry.focus_cost != 0) {
        "AP: " + str(entry.ap_cost) + "  "
        "Focus: " + str(entry.focus_cost)
        linebreak()
      }
      parseTerms(entry.description)
      linebreak()
      if ("valid_weapon_tags" in entry and type(entry.valid_weapon_tags) == array) {
        linebreak()
        "Valid Weapon Tags: "
        entry.valid_weapon_tags.map((tag) => term(tag)).join(", ")
      }
      if ("valid_weapon_types" in entry and type(entry.valid_weapon_types) == array) {
        linebreak()
        "Valid Weapon Types: "
        entry.valid_weapon_types.map((type) => term(type)).join(", ")
      }
    })
  }))
}

#let talentsTable(talents) = {
  columns(2,
  gutter: 3em,
  block(
  for (name, talent) in talents.pairs() {
    block(
      breakable: false,
      fill: color.rgb("#d7fadf"),
      inset: (x: 1em, y: 1.2em),
      radius: 1em,
      {align(center)[#strong(text(1.25em)[#name])]
      for (tier, entry) in talent.enumerate(start: 1) {
        linebreak()
        strong(entry.name) 
        " (" + entry.tag + ")"
        h(1fr) + "Tier: " + str(tier)
        linebreak()
        if (entry.ap_cost != 0 or entry.focus_cost != 0) {
          "AP: " + str(entry.ap_cost) + "  "
          "Focus: " + str(entry.focus_cost)
          linebreak()
        }
        entry.description
        linebreak()
      }
    })
  })
  )
}

#let heritagesTable(heritages) = {
  columns(2,
  gutter: 3em,
  block(
    for heritage in heritages.values() {
      block(
        breakable: false,
        fill: color.rgb("#f7fad7"),
        inset: (x: 1em, y: 1.2em),
        radius: 1em,
        {
          str(heritage.name)
          linebreak()
          linebreak()
          heritage.description
          linebreak()
          linebreak()
          "Mutations: " + heritage.mutations.join(", ")
      })
  })
  )
}

#let backgroundsTable(backgrounds) = {
  columns(2,
  gutter: 3em,
  block(
    for background in backgrounds.values() {
      if (background.name != "[BACKGROUND NAME BUT AGAIN]") {
        block(
          breakable: false,
          fill: color.rgb("#faf3d7"),
          inset: (x: 1em, y: 1.2em),
          radius: 1em,
          {
            str(background.name)
          }
        )
      }
    }
  ))
}