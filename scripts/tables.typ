#import "./glossary.typ": term, boon, bane, roll

/* functions_dict is used to parse functions by mapping function names (strings) to the actual functions.
   Simply add mappings (make sure you import the function if it's not built in) to enable parsing them.
   parseFunctions currently only passes arguments as strings, but can handle named arguments.
*/
#let functions_dict = ("term": term, "boon": boon, "bane": bane, "roll": roll)
#let parseFunctions(text) = {
  let functions = text.matches(regex("#(.+?)[\[\(](.+?)[\]\)]")) // Matches strings that start with #<fun> followed by (<args>) or [<arg>], capturing the function name and arguments
  if (functions.len() > 0) { // If there were any functions, we need to parse them
    let split_text = text.split(regex("#.+?[\[(].+?[\])]")) // Split the text to obtain all the non-function text
    // Combine the text fragments with the function calls
    split_text.zip(functions.map((entry) => {
        // Since function arguments are captured as one string, we must split the string and flatten the resulting array together with the function name
        let split_captures = entry.captures.map((e) => e.split(regex(", +"))).flatten()
        // Get the index of the first named argument
        let named_params_index = split_captures.position((e) => e.contains(":"))
        if (named_params_index != none) { // If there are named arguments, parse them into actual arguments
          // Make a dictionary out of the list of named arguments by splitting each one around the colon and turning the resulting array of pairs into a dictionary with the array method to-dict()
          let named_params_dict = split_captures.slice(named_params_index).map((e) => e.split(": ")).to-dict()
          // Get the correct function and call it using the spread of the unnamed argument array and the spread of the named argument dictionary
          functions_dict.at(split_captures.at(0))(..split_captures.slice(1, named_params_index), ..named_params_dict)
        } else { // If there are no unnamed arguments, do the same thing without those
          functions_dict.at(split_captures.at(0))(..split_captures.slice(1))
        }
    })).flatten().join() // Zip returns an array of pairs, which are flattened and then joined into a single piece of content
    split_text.at(-1) // Add on the last piece of the split text, which isn't already included because zip only pairs up elements from the input lists, so the text that comes after the last function is left out
  } else { // If there aren't functions in text, just return text
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
    else {ability.name + ":\n" + parseFunctions(ability.description)},
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
      parseFunctions(entry.description),
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
      parseFunctions(entry.description)
      linebreak()
      if (entry.abilities != none) {
        for ability in entry.abilities {
          linebreak()
          let a = abilities.at(ability)
          (
            emph(a.tag + ": " + a.name),
            if (a.tag == "Active") {"AP: " + str(a.ap_cost) + "  Focus: " + str(a.focus_cost) + "\n"} + parseFunctions(a.description),
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
      parseFunctions(entry.description)
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
        parseFunctions(entry.description)
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
          parseFunctions(heritage.description)
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

#let bestiaryTable(bestiary, abilities) = {
  columns(2,
  gutter: 3em,
  block(

  )
  )
}

#let spellTable(spells, enhancements) = {
  columns(2,
  gutter: 3em,
  block(
    for spell in spells.values() {
      block(
        breakable: false,
        fill: color.rgb("#f7fad7"),
        inset: (x: 1em, y: 1.2em),
        radius: 1em,
        {

        })
    }
  ))
}