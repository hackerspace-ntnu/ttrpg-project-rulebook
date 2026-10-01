#import "../../scripts/glossary.typ": term, render_glossary, glossary_types
#import "../../scripts/tables.typ": weaponTagsTable, weaponTable, mutationsTable, abilitiesTable, talentsTable, heritagesTable

= Appendices
<appendices>

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

== Appendix B: Mutations

=== Mutations
<mutation-table>
#mutationsTable(json("../../data/json/mutations.json"), json("../../data/json/mutation_abilities.json"))

=== Mutation Abilities
<mutation-abilities>

#pagebreak()

== Appendix C: Abilities

=== Core Abilities
<core-abilities>
#abilitiesTable(json("../../data/json/abilities.json"))

#pagebreak()

=== Tiered Abilities
<tiered-abilities>
#talentsTable(json("../../data/json/talents.json"))

#pagebreak()

== Appendix D: Heritages
<heritages>

#heritagesTable(json("../../data/json/heritages.json"))