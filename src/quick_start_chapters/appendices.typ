#import "../../scripts/glossary.typ": term, render_glossary, glossary_types
#import "../../scripts/tables.typ": mutationsTable, abilitiesTable, talentsTable, heritagesTable, spellTable, spellEnhancementsTable, bestiaryTable


= Mutations
<mutation-table>
#image("../../data/art/appendix_mutations_bg.png", height: 94%, fit: "contain")
#mutationsTable(json("../../data/json/mutations.json"), json("../../data/json/mutation_abilities.json"))

#pagebreak()

= Abilities
#image("../../data/art/spell_1_bg.png", height: 94%, fit: "contain")

== Core Abilities
<core-abilities>
#abilitiesTable(json("../../data/json/abilities.json"))

#pagebreak()

== Tiered Abilities
<tiered-abilities>
#talentsTable(json("../../data/json/talents.json"))

#pagebreak()

= Heritages
<heritages>
#image("../../data/art/appendix_heritage_bg.png", height: 94%, fit: "contain")
#heritagesTable(json("../../data/json/heritages.json"))

#pagebreak()


= Spells & Enhancements
#image("../../data/art/spell_2_bg.png", height: 94%, fit: "contain")

== Spells
<spells>

#spellTable(json("../../data/json/spells.json"))
#pagebreak()

== Spell Enhancements
<spell-enhancements>
#spellEnhancementsTable(json("../../data/json/spell_enhancements.json"))

#pagebreak()

= Bestiary
<bestiary>
#figure(
  image("../../data/art/SNAKE_bg.png", height: 94%, fit: "contain")
)
== Monsters
#bestiaryTable(json("../../data/json/bestiary.json"), json("../../data/json/abilities.json"), json("../../data/json/talents.json"), json("../../data/json/spells.json"), json("../../data/json/mutation_abilities.json"), 2, "Aberrant, Titanspawn")

#pagebreak()

== Titans
#bestiaryTable(json("../../data/json/bestiary.json"), json("../../data/json/abilities.json"), json("../../data/json/talents.json"), json("../../data/json/spells.json"), json("../../data/json/mutation_abilities.json"), 1, "Titan") 
