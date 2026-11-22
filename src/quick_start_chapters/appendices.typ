#import "../../scripts/glossary.typ": term, render_glossary, glossary_types
#import "../../scripts/tables.typ": weaponTagsTable, weaponTable, mutationsTable, abilitiesTable, talentsTable, heritagesTable, spellTable, spellEnhancementsTable, bestiaryTable


= Weapons & Tags
<appendix-a>
#image("../../data/art/appendix_weapons_bg.png", height: 94%, fit: "contain")

== Weapon List
<weapons-appendix>
#show figure: set block(breakable: true)
#set table.cell(breakable: false)
#figure(align(center)[
  #weaponTable(json("../../data/json/weapons.json"), json("../../data/json/abilities.json"))
])
\*Active effects modifying an attack must be used before making the Attack Roll.


== Weapon Tags
<weapon-tags>
#weaponTagsTable(json("../../data/json/weapon_tags.json"))

#pagebreak()

= Mutations
<mutation-table>
#image("../../data/art/appendix_mutations_bg.png", height: 94%, fit: "contain")
#mutationsTable(json("../../data/json/mutations.json"), json("../../data/json/mutation_abilities.json"))

#pagebreak()

= Abilities
#page(margin: 1cm, image("../../data/art/spell_1_bg.png", width: 100%, height: 100%, fit: "contain"))

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
== Monsters
#bestiaryTable(json("../../data/json/bestiary.json"), json("../../data/json/abilities.json"), json("../../data/json/talents.json"), json("../../data/json/spells.json"), json("../../data/json/mutation_abilities.json"), 2, "Aberrant, Titanspawn")

#pagebreak()

== Titans
#bestiaryTable(json("../../data/json/bestiary.json"), json("../../data/json/abilities.json"), json("../../data/json/talents.json"), json("../../data/json/spells.json"), json("../../data/json/mutation_abilities.json"), 1, "Titan") 
