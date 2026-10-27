#import "../../scripts/glossary.typ": term, render_glossary, glossary_types, boon

= Character creation
<character-creation-mutations>
Everyone needs a character in order to play. A character in Titanslayer consists of their #term[Attributes], determining what dice they roll for checks\; their #term("Background", key: "Backgrounds"), defining the character's life until they became a #term("Hunter", key: "Hunters", glossary_type: glossary_types.faction)\; their #term("Heritage", key: "Heritages"), which describes their lineage and inherent #term[Mutations]\; and their #term[Equipment], which they discover, craft, and purchase on their journey.

All characters start with some base stats, most of which are modified by their #term[Attributes]: \
// TODO: We should decide where to define these things.
Base #term[Grit]: 7 \
Base #term[Focus]: 7 \
Base #term[Carrying Capacity]: 5 \
Base #term[Speed]: 3 Spaces

#term("Grit", is_definition: true) is a measure of the physical and mental strain a character can withstand. Whenever you take any amount of #term("Damage", is_definition: true), you lose that much #term[Grit].

#term("Focus", is_definition: true) is a measure of your awareness of your surroundings and the state of yourself, and is spent to use certain #term[Abilities] and #term[Actions]. 

#term[Carrying Capacity] is a measure of how much #term[Bulk] you can carry, and is discussed further in the #link(<equipment>, "Equipment section").

#term("Speed", is_definition: true) defines how many #term[Spaces] you can move using a single #term[Move] in combat, with one #term("Space", is_definition: true, key: "Spaces") being approximately 1 meter.

== Attributes
Each character has 4 #term("Attributes", is_definition: true) that are represented by a die of size d4-d12.
These die sizes map to #term("Attribute Modifiers", is_definition: true) of 1-5, matching the sizes of #term("Boon Dice", key: "Boons").

#figure(
  placement: none,
  scope: "column",
  align(center)[#table(
    columns: 7,
    align: (left,left,left,left,left,left,left,),
    table.header([Modifier], [1], [2], [3], [4], [5], [6],),
    table.hline(),
    [Die], [d4], [d6], [d8], [d10], [d12], [d20],
  )]
  , kind: table
)

#figure(
  align(center)[#table(
    columns: (15%, 40%, 40%),
    align: (left,left,left,),
    table.header([Attribute], [Description], [Effect],),
    table.hline(),
    term("Might", is_definition: true), [Strength and endurance], [\+ mod to #term[Grit] and #term[Carrying Capacity]],
    term("Agility", is_definition: true), [Speed, dexterity, flexibility and balance], [\+ mod to
    Speed],
    term("Insight", is_definition: true), [Ability to discover and reason about information], [\Boon dice can never roll lower than your Insight mod],
    term("Presence", is_definition: true), [Inner focus and the power to inspire or command], [\+ mod to Focus],
  )]
  , supplement: none
  , caption: [Attribute Table]
  , kind: table
) <attribute-table>

On creation, arrange \[d4, d6, d6, d8\] how you want your character's
attributes to be. 
Then you gain a #term("Core Ability", key: "Core Abilities") that is tagged as the same #term("Attribute", key: "Attributes") as your highest, or as "General".

== Heritages
#term("Heritage", key: "Heritages", is_definition: true) define the lineage of your character, and comes with #term[Mutations] that your character starts with.

Different #term[Heritages] #term("Corrupt", key: "Corrupted Focus") different amounts of #term[Focus], which is noted in their blocks.
If you want to make your own #term("Heritage", key: "Heritages"), start with Blank Slate and add #term[Mutations] as described later in this chapter.

== Backgrounds
#term("Backgrounds", is_definition: true) describe what your character has been doing before venturing into the wilds as a #term("Hunter", key: "Hunters", glossary_type: glossary_types.faction).
#term("Backgrounds") can be invoked for non-combat rolls to gain #boon(1) on the roll, given it makes sense for it to help in the narrative.

Furthermore, when choosing your #term("Background", key: "Backgrounds") you gain a single tier 1 #term("Tiered Ability", key: "Tiered Abilities") of the #term("Attribute", key: "Attributes") denoted by your #term("Background", key: "Backgrounds").

== Core Memories
Come up with three #term("Core Memories", is_definition: true) that define your character.
These can be fond memories of a loved one, trauma from your past, a great achievement, or anything else you can think of.

Talking with your fellow players and linking 1-2 of the #term[Core Memories] with them sets a great foundation for the party dynamic.
They don't need to be the same as the other characters', and ideally shouldn't, but they could be different perspectives of the same event.

#term[Core Memories] are linked to parts of the #term("Focus Track", key: "Focus") on the 
//#link(<character-sheet>, "Character Sheet").
When the linked #term[Focus] is #term("Corrupted", key: "Corruption"), you lose the associated #term("Core Memory", key: "Core Memories") forever.

== Mutations
// TODO: Looks like this rule applies for all links after this point in the character creation document, including those to tables or terms. How do we feel about that?
//#show link: underline
Choose any #term("Mutations", is_definition: true) you'd like from the @mutation-table/*#link(<mutation-table>)[Mutation Table] (#link("https://docs.google.com/document/d/1zkKA1ifbYqop71Pm5RrK5ofa_Z9V3Yyyje8CdN3MKn4/edit?tab=t.eulwm9krcgii")[#text(fill: purple)[#underline[document]]])*/, or make up your own, then notify the GM of your choices. 
But power comes at a cost.
One of your #term[Focus] is permanently #term("Corrupted", key: "Corrupted Focus") for each tier of the chosen #term[Mutations].

== Archetypes
If you're not sure where to start in terms of attributes, weapons,
armor, and equipment, here are some options.

If you want to play a character who can move quickly around the battlefield and attack at range, Agility and Insight are good choices for your highest Attribute scores. Take 2 Kunai/Daggers (your choice), a Longbow, a quiver, and either a bandolier with 3 more Kunai/Daggers or Light Armor.

If you want your character to be able to withstand a lot of attacks, you should focus on Might and Insight. Take a Warhammer, Heavy Shield, Boomerang, and Heavy Armor. You may want an extra Boomerang or two.

Alternatively, you can focus on dealing damage in melee, in which case Might and Presence are important Attributes. Choose a Greatsword, Sling, and Medium Armor. 

The absolute necessities are a backpack containing a bedroll and 8
Rations. Feel free to get any other items you want and have space for,
but consider leaving some room for other items you pick up along the
way. It's a good idea to make sure at least one person in your party has
a mess kit, rope, and torches. See the #link(<equipment>, "Equipment section") section for more details. 
