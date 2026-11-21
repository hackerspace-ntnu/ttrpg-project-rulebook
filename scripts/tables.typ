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
  (
    entry.name,
    if (entry.attributes == none) {}
    else {entry.attributes.join(" + ")},
    if (entry.tags == none) {}
    else {entry.tags.map(e => {
      term(e)
    }).join("\n")},
  )})
  let ranged = data.weapons.position((weapon) => {
    return weapon.tags.any(tag => tag.contains("Ranged"))
  })
  let shields = data.weapons.position((weapon) => {
    return weapon.name.contains("Shield")
  })
  columns(2,
  table(
    columns: (35%, 25%, 40%),
    align: (left, left, left, left),
    table.header([Name], [Roll], [Tags]),
    table.hline(),
    ..weapons.slice(0, ranged).flatten(),
    [], [], [],
    ..weapons.slice(ranged, shields).flatten(),
    [], [], [],
    ..weapons.slice(shields).flatten()
  ))
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

#let spellTable(spells) = {
  columns(2,
  gutter: 3em,
  block(
    for spell in spells.values() {
      if (spell.name == "") {
        continue
      }
      block(
        breakable: false,
        fill: color.rgb("#faf1d7"),
        inset: (x: 1em, y: 1.2em),
        radius: 1em,
        {
          strong(spell.name)
          h(1fr) + "Tier: " + str(spell.tier)
          linebreak()
          spell.tags.join(", ")
          linebreak()
          "Target: " + spell.target
          if ("range" in spell) {
            ", Range: " + str(spell.range)
          }
          if ("aoe" in spell) {
            ", " + spell.aoe_type + "(" + str(spell.aoe) + ")"
          }
          linebreak()
          "Duration: " + spell.duration
          linebreak()
          linebreak()
          emph(
            spell.roll_type + 
            if ("roll_dc" in spell) {
              " " + str(spell.roll_dc)
            } +
            ": "
          )
          linebreak()
          "AP: " + str(spell.ap_cost)
          " Focus: " + str(spell.focus_cost)
          linebreak()
          parseFunctions(spell.description)
          linebreak()
          linebreak()
          "Valid Spell Enhancements: " + spell.enhancements.join(", ")
        })
    }
  ))
}

#let spellEnhancementsTable(enhancements) = {
  columns(2,
  gutter: 3em,
  block(
    for enhancement in enhancements.values() {
      if (enhancement.name == "name" or enhancement.name == "") {
        continue
      }
      block(
        breakable: false,
        fill: color.rgb("#fae0d7"),
        inset: (x: 1em, y: 1.2em),
        width: 100%,
        radius: 1em,
        {
          strong(enhancement.name)
          linebreak()
          enhancement.tag
          linebreak()
          linebreak()
          if (enhancement.ap_cost != 0 or enhancement.focus_cost != 0) {
            "AP: " + str(enhancement.ap_cost) + "  "
            "Focus: " + str(enhancement.focus_cost)
            linebreak()
          }
          parseFunctions(enhancement.description)
        }
      )
    }
  ))
}

#let modifierToDie(mod, unwieldy) = {
  let adjustedMod = mod - int(unwieldy)
  if (adjustedMod == 6) {
    "d20"
  } else if (adjustedMod < 0) {
    "1"
  } else {
    "d" + str((adjustedMod+1)*2)
  }
}

#let rollToString(roll, mods, hasUnwieldy) = {
  let dice = ()
  let attributes = ()
  for letter in roll {
    if (letter == "m") {
      dice.push(modifierToDie(mods.might, hasUnwieldy))
      attributes.push("Might")
    } else if (letter == "a") {
      dice.push(modifierToDie(mods.agility, hasUnwieldy))
      attributes.push("Agility")
    } else if (letter == "i") {
      dice.push(modifierToDie(mods.insight, hasUnwieldy))
      attributes.push("Insight")
    } else if (letter == "p") {
      dice.push(modifierToDie(mods.presence, hasUnwieldy))
      attributes.push("Presence")
    }
  }
  dice.join(" + ") + emph(" (" + attributes.join(" + ") + ")")
}

#let getSpellHeader(ability) = {
  let arr = ()
  if ("target" in ability) {
    arr.push("Target: " + ability.target)
  }
  if ("range" in ability) {
    if (arr.len() > 0) {
      arr.push(", ")
    }
    arr.push("Range: " + str(ability.range))
  }
  if ("aoe_type" in ability) {
    if (arr.len() > 0) {
      arr.push(", ")
    }
    arr.push(ability.aoe_type)
  }
  if ("aoe" in ability) {
    arr.push("(" + str(ability.aoe) + ")")
  }
  arr.push(linebreak())
  if ("duration" in ability) {
    arr.push("Duration: " + ability.duration)
  }
  arr.push(parbreak())
  if (arr.len() > 2) {
    arr.join("")
  }
}

#let bestiaryTable(bestiary, abilities, talents, spells, mutation_abilities, columnCount, filterBy) = {
  let beasts = bestiary.values().filter(b => {
    if filterBy == none {
      true
    } else if filterBy.split(", ").contains(b.creature_type) {
      true
    } else {
      false
    }
  })
  columns(columnCount,
  gutter: 3em,
  block(
    for beast in beasts.sorted(key: e =>(e.name)) {
      if (beast.name == "creature name") {
        continue
      }
      // let doBreak = if (beast.creature_type == "Titan") { true } else { false }
      block(
        fill: color.rgb("#fbf7e8"),
        inset: (x: 1em, y: 1.2em),
        width: 100%,
        radius: 1em,
        breakable: false,
        {
          block(
            breakable: false,
            {
              align(center)[#strong(text(1.25em)[#beast.name]) \ #emph(beast.description)]
              parbreak()
              let cols = (2, 1)
              grid(
                columns: (1fr,)*cols.at(columnCount - 1),
                align: center + horizon,
                gutter: 0.75em,
                row-gutter: 1em,
                grid(
                  columns: (1fr, 1fr),
                  rows: auto,
                  gutter: 0.75em,
                  row-gutter: 0.65em,
                  align: center,
                  "Grit: " + str(beast.grit),
                  "Speed: " + str(beast.speed),
                  "Block: " + str(beast.block),
                  "Size: " + str(beast.size)
                ),
                grid(
                  columns: (1fr, 1fr),
                  rows: auto,
                  gutter: 0.75em,
                  row-gutter: 0.65em,
                  align: center,
                  underline("Might", offset: 0.35em),
                  underline("Agility", offset: 0.35em),
                  str(beast.might), str(beast.agility),
                  underline("Insight", offset: 0.35em),
                  underline("Presence", offset: 0.35em),
                  str(beast.insight), str(beast.presence)
                )
              )
              parbreak()
              h(0.5fr) + "Evasion: " + str(beast.evasion) + h(1fr) + "Heavy Hit: " + str(beast.heavy_hit) + h(1fr) + "Brutal Hit: " + str(beast.brutal_hit) + h(0.5fr)
            }
          )

          for a in beast.abilities {
            if (a.name == "") {
              continue
            }
            block(
              breakable: false,
              {
                let ability = if ("inherits_from" in a) {
                  if (a.inherits_from == "spells") {
                    spells.at(a.name) + a
                  } else if (a.inherits_from == "mutation_abilities") {
                    mutation_abilities.at(a.name) + a
                  } else if (a.inherits_from == "abilities") {
                    (talents.values().flatten() + abilities.values()).find(entry => entry.name == a.name) + a
                  }
                } else {a}
                strong(ability.name)
                if ("ability_type" in ability) {
                  " (" + ability.ability_type
                  if ("tags" in ability) {
                    ": " + ability.tags.join(", ")
                  }
                  ")"
                } else if ("tag" in ability) {
                  " (" + ability.tag + ")"
                }
                if ("tier" in ability) {
                  h(1fr) + "Tier: " + str(ability.tier)
                }
                linebreak()
                if ("roll" in ability) {
                  let hasUnwieldy = if ("weapon_tags" in ability and type(ability.weapon_tags) == array) {
                    let unwieldy = ability.weapon_tags.find(e => e.contains(regex("Unwieldy.*")))
                    if (unwieldy != none) {
                      unwieldy.match(regex("Unwieldy\(([0-9]+)\)")).captures.first()
                    } else {
                      0
                    }
                  } else { 0 }
                  rollToString(ability.roll, ("might": beast.might, "agility": beast.agility, "insight": beast.insight, "presence": beast.presence), hasUnwieldy)
                  linebreak()
                }
                getSpellHeader(ability)
                if ("roll_type" in ability) {
                  emph(
                    ability.roll_type + 
                    if ("roll_dc" in ability) {
                      " " + str(ability.roll_dc)
                    } +
                    ": "
                  )
                  linebreak()
                }
                if ("ap_cost" in ability and ability.ap_cost != none and ability.ap_cost > 0) {
                  "AP: " + str(ability.ap_cost) + " "
                  if ("focus_cost" in ability and ability.focus_cost != none and ability.focus_cost > 0) {
                    "Focus: " + str(ability.focus_cost)
                  }
                  linebreak()
                } else if ("focus_cost" in ability and ability.focus_cost != none and ability.focus_cost > 0) {
                  "Focus: " + str(ability.focus_cost)
                  linebreak()
                }
                if ("description" in ability) {
                  parseFunctions(ability.description)
                  linebreak()
                }
                if ("weapon_tags" in ability and type(ability.weapon_tags) == array) {
                  "Weapon Tags: " + ability.weapon_tags.map((tag) => term(tag)).join(", ")
                  linebreak()
                }
                if ("enhancements" in ability and ability.enhancements.len() > 0) {
                  "Spell Enhancements: "
                  ability.enhancements.join(", ")
                  linebreak()
                }
                if ("valid_weapon_tags" in ability and type(ability.valid_weapon_tags) == array) {
                  "Weapon Tags: " + ability.valid_weapon_tags.map((tag) => term(tag)).join(", ")
                  linebreak()
                }
                if ("valid_weapon_types" in ability and type(ability.valid_weapon_types) == array) {
                  "Weapon Types: " + ability.valid_weapon_types.map((tag) => term(tag)).join(", ")
                  linebreak()
                }
              }
            )
          }
        })
    }

  ))
}