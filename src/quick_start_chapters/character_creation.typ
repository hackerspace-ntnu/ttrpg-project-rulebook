#import "../../scripts/glossary.typ": term, render_glossary, glossary_types, boon

= Character creation
<character-creation-mutations>
Everyone needs a character in order to play. A character in Titanslayer consists of their #term[Attributes], determining what dice they roll for checks\; their #term("Background", key: "Backgrounds"), defining the character's life until they became a #term("Hunter", key: "Hunters")\; their #term("Heritage", key: "Heritages"), which describes their lineage and inherent #term[Mutations]\; and their #term[Equipment], which they discover, craft, and purchase on their journey.

All characters start with some base stats, most of which are modified by their #term[Attributes]: \
// TODO: We should decide where to define these things.
Max #term[Strain]: 7 \
Max #term[Focus]: 7 \
#term[Carrying Capacity]: 4 \
Base #term[Speed]: 3 Spaces

#term("Strain", is_definition: true) is a measure of the physical and mental strain inflicted to a character, acting similar to HP in other games.
Unlike HP, #term[Strain] goes up when you take damage or suffer some sort of trauma.

#term("Focus", is_definition: true) is a measure of your awareness of your surroundings and the state of yourself, and is spent to use certain #term[Abilities] and #term[Actions]. 

#term[Carrying Capacity] is a measure of how much #term[Bulk] you can carry, and is discussed further in the #link(<equipment>, "Equipment section").

#term("Speed", is_definition: true) defines how many #term[Spaces] you can move using a single #term[Move].

== Attributes

Each character has 4 #term[Attributes]. Each #term("Attribute", key: "Attributes", is_definition: true) is represented by a die of size d4-d12, mapping to a modifier of 1-5.

#figure(
  align(center)[#table(
    columns: (15%, 40%, 40%),
    align: (left,left,left,),
    table.header([Attribute], [Description], [Effect],),
    table.hline(),
    term("Might", is_definition: true), [Strength and endurance], [\+ mod to #term[Strain] and #term[Carrying Capacity]],
    term("Agility", is_definition: true), [Speed, dexterity, flexibility and balance], [\+ mod to
    Speed],
    term("Insight", is_definition: true), [Ability to discover and reason about information], [\Boon dice can never roll lower than your Insight mod],
    term("Presence", is_definition: true), [Inner focus and the power to inspire or command], [\+
    mod to Focus],
  )]
  , supplement: none
  , caption: [Attribute Table]
  , kind: table
) <attribute-table>

On creation, arrange \[d4, d6, d6, d8\] how you want your character's
attributes to be.

== Heritages
#term("Heritage", key: "Heritages", is_definition: true) define the lineage of your character, and comes with #term[Mutations] that your character starts with.


== Backgrounds
#term("Backgrounds", is_definition: true) describe what your character has been doing before venturing into the wilds as a #term("Hunter", key: "Hunters").
Each #term("Background", key: "Backgrounds") can be invoked for non-combat rolls to gain #boon(1) on the roll, given it makes sense for it to help in the narrative.
Furthermore, you gain a single tier 1 #term("Ability", key: "Abilities") of the #term("Attribute", key: "Attributes") denoted by your #term("Background", key: "Backgrounds").


== Mutations
// TODO: Looks like this rule applies for all links after this point in the character creation document, including those to tables or terms. How do we feel about that?
//#show link: underline
Choose any #term("Mutations", is_definition: true) you'd like from the #link(<mutation-table>)[Mutation Table] (#link("https://docs.google.com/document/d/1zkKA1ifbYqop71Pm5RrK5ofa_Z9V3Yyyje8CdN3MKn4/edit?tab=t.eulwm9krcgii")[#text(fill: purple)[#underline[document]]]), or make up your own, then notify the GM of your choices. 
The first 2 tiers worth of #term[Mutations], are free.
For each tier past the first 2, one of your #term[Focus] is permanently #term("Corrupted", key: "Corrupted Focus") for each tier of the chosen #term[Mutations].

== Archetypes
If you're not sure where to start in terms of attributes, weapons,
armor, and equipment, here are some options.

If you want to play a character who can move quickly around the battlefield and attack at range, Agility and Insight are good choices for your highest Attribute scores. Take 2 Kunai/Daggers (your choice), a Longbow, a quiver, and either a bandolier with 3 more Kunai/Daggers or Light Armor.

If you want your character to be able to withstand a lot of attacks, you should focus on Might and Insight. Take a Warhammer, Heavy Shield, Boomerang, and Heavy Armor. You may want an extra Boomerang or two. It's important to have a repair kit since this build is intended to block damage using the durability of your armor and shield.

Alternatively, you can focus on dealing damage in melee, in which case Might and Presence are important Attributes. Choose a Greatsword, Sling, and Medium Armor. 

The absolute necessities are a backpack containing a bedroll and 8
Rations. Feel free to get any other items you want and have space for,
but consider leaving some room for other items you pick up along the
way. It's a good idea to make sure at least one person in your party has
a mess kit, rope, repair kit (the more the better), and torches. See the #link(<equipment>, "Equipment section") section for more details. 
