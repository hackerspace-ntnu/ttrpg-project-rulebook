#import "../../scripts/glossary.typ": term, render_glossary, glossary_types

= Equipment
<equipment>
Each character has a #term("Carrying Capacity", is_definition: true) equal to 5 + Might Mod.
Items and Equipment have an amount of #term[Bulk] (usually 1).
If you're carrying more than your #term("Capacity", key: "Carrying Capacity") at the end of a #term("Shift", key: "Shifts"), you get #term[Fatigue] equal to the amount of extra #term[Bulk] you're carrying (total #[Bulk] - #term[Carrying Capacity]).

Each character also has a #term("Quick Draw Inventory", is_definition: true) with a Capacity of 3, which does not contribute to the total #term[Bulk] in your regular Inventory.
Essentially, you get 3 extra Capacity for things like Weapons and Shields that you would want easy access to during combat.

Finally, small Items with 0 #term[Bulk] are called #term("Trinkets", is_definition: true), and don't go in a characters normal Inventory.
Instead, each character has a #term("Pocket", is_definition: true), where they can fit as many #term[Trinkets] as they can physically write in the box on their character sheet.
These are things like a flint and steel, a pocket knife, a letter, or a sentimental item.

== Equipment List
<equipment-list>
#figure(
  align(center)[#table(
    columns: (33.33%, 10%, 56.66%),
    align: (left,left,left,),
    table.header([Item], [Bulk], [Description],),
    table.hline(),
    [Armor (worn/not worn)], [1+/2+], [Each tier above Light adds +1
    Bulk],
    [Weapon], [1], [],
    [Heavy Weapon], [2], [],
    [Bandolier], [1], [Can hold up to 3 Weapons with both the Light and Thrown tags (which then do not
    count towards total Bulk), counting as Quick Draw Inventory for the sake of the #strong[Stow] and #strong[Draw] Actions.],
    [Quiver], [1], [Comes with 20 Arrows, which it can hold],
    [Ration x4], [1], [Food and water],
    [Repair Kit], [1], [Needed for Crafting Checks and Tinker Checks to
    repair items],
    [Backpack], [1], [Can carry 3 Bulk, max one in use],
    [Mess kit], [1], [Needed for cooking],
    [Bedroll], [1], [Sleeping without doesn't recover Fatigue],
    [Rope (15 meters)], [1], [],
    [Torches x4], [1], [Burns for 1 Shift, providing Light in a 10 meter radius sphere],
  )]
  , kind: table
  )

== Armor & Damage Thresholds
<armor-damage-thresholds>
// TODO: Add info about Armor Strain, and how damaging/repairing equipment works
#figure(
  align(center)[#table(
    columns: (18%, 18%, 18%, 18%, 14%, 9%),
    align: (left,left,left,left,left,left,),
    table.header([], [Evasion\ + Agility Mod\ + Insight Mod], [Heavy Hit\ +
      Might Mod\ + Presence Mod], [Brutal Hit\*\ + Might Mod\ + Presence
      Mod], [Max Strain], [Speed],),
    table.hline(),
    [No armor], [6], [8], [13], [0], [+1],
    [Light armor], [5], [9], [14], [2], [],
    [Medium armor], [4], [10], [15], [4], [],
    [Heavy armor], [3], [12], [17], [6], [-1],
  )]
  , kind: table
  ) <armor>

\*Beyond Brutal: Every 5 above Brutal counts as +1 damage/success

== Weapons
<weapons>
A character has one main-hand and one off-hand. You can only hold as many items as you have hands, and some weapons have specific requirements to be used effectively. For example, you can use a Light weapon like a dagger with either hand, but a rapier requres more finesse, so you need to wield it in your main-hand.

Shields count as weapons and can be used to attack, but doing so is less effective than using a regular weapon. Their main purpose is to help you take less damage and absorb blows.

You can see a full list of weapons and their tags in #link(<appendix-a>, "Appendix A")
