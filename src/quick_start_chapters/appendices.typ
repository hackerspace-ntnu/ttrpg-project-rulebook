#import "../../scripts/glossary.typ": term, render_glossary, glossary_types
#import "../../scripts/tables.typ": weaponTagsTable, weaponTable, mutationsTable, abilitiesTable, talentsTable, heritagesTable, spellTable, spellEnhancementsTable

= Appendices
<appendices>

#page(margin: 0pt, image("../../data/art/appendix_weapons_bg.png", width: 100%, height: 100%))
== Appendix A: Weapons
<appendix-a>

=== Weapons
<weapons-appendix>
#show figure: set block(breakable: true)
#set table.cell(breakable: false)
#figure(align(center)[
  #weaponTable(json("../../data/json/weapons.json"), json("../../data/json/abilities.json"))
])
\*Active effects modifying an attack must be used before making the Attack Roll.


=== Weapon Tags
<weapon-tags>
#weaponTagsTable(json("../../data/json/weapon_tags.json"))

#pagebreak()


#page(margin: 0pt, image("../../data/art/appendix_mutations_bg.png", width: 100%, height: 100%))
== Appendix B: Mutations
<mutation-table>
#mutationsTable(json("../../data/json/mutations.json"), json("../../data/json/mutation_abilities.json"))

#pagebreak()

// #page(margin: 0pt, image("../../data/art/", width: 100%, height: 100%))
== Appendix C: Abilities

=== Core Abilities
<core-abilities>
#abilitiesTable(json("../../data/json/abilities.json"))

#pagebreak()

=== Tiered Abilities
<tiered-abilities>
#talentsTable(json("../../data/json/talents.json"))

#pagebreak()


#page(margin: 0pt, image("../../data/art/appendix_heritage_bg.png", width: 100%, height: 100%))
== Appendix D: Heritages
<heritages>

#heritagesTable(json("../../data/json/heritages.json"))

#pagebreak()


#page(margin: 0pt, image("../../data/art/spell_2_bg.png", width: 100%, height: 100%))
== Appendix E: Spells & Enhancements

=== Spells
<spells>

#spellTable(json("../../data/json/spells.json"))
#pagebreak()

=== Spell Enhancements
<spell-enhancements>
#spellEnhancementsTable(json("../../data/json/spell_enhancements.json"))

#pagebreak()
= Bestiary
<bestiary>
#include "../bestiary/bestiary.typ"