#import "../scripts/glossary.typ": term, render_glossary, glossary_types

#align(center)[
  #text(size: 24pt, weight: "bold")[Titanslayer Quick Start Guide]
]

#v(8em)

#outline(
  title: "Table of Contents",
  indent: auto
)

#pagebreak()

= Setting
<setting>
This game is set after an event called the Collapse, wherein a prosperous, highly advanced global civilization was destroyed by tremendous creatures, called Titans, emerging from Mana Gateways that they were using to power their cities.
The destabilization wrought by the Collapse to the world dried up the seas and turned the land arid.
Now water and vegetation is mostly found clustered around Mana Gates, where the creatures most twisted by the Mana also roam.
Mana is akin to radiation, in that it suffuses an area invisibly and causes mutations, but Mana mutations are quick and dramatic.
Mana also disrupts electric currents, rendering conventional technology inoperable.
Mana density increases in proximity to a Gate or Titan.
Due to the danger inherent in living in these areas of dense Mana, most of civilization is found in the dry lands away from the Gates.
A few years ago, within living memory, a prophesied being called the Titanslayer managed to actually fell one (1) Titan.
Now those who delve into the depths of the Mana-saturated areas dream of accruing enough power (through beneficial mutations, wealth, advanced mana-tech, training and whatever means necessary) to fell a second Titan and claim the title of . . . 

#align(center)[
  #text(size: 18pt, weight: "bold", fill: gray)[Titanslayer]
]

Optional lore expansion (can be excised for pagecount/conciseness): \
One of the most ardent sponsors of would-be Titanslayers is the University of Human Understanding and their world-spanning project to catalogue and categorize #emph[everything];, the Understanding. 
In most cities and towns, there will be an agent of the Understanding willing to provide payment for bits of knowledge and physical specimens. \
TODO: Expand lore expansion to add a few more factions (Og, Kaleina,
those idiots who claimed the first titanslayer)

= Core rules
<core-rules>
== Action Rolls
<action-rolls>
Titanslayer is primarily played through roleplay, but if players want to do a risky action or avoid danger the #strong[Game Master] (GM) will usually ask them to make an #term("Action Roll");. 
The GM secretly decides on a #term("Difficulty Class") of the roll and tells the player which two #term("Attribute Dice") they should roll.
The player then rolls two dice, corresponding to the attributes they were told to roll and add the numbers together.
If they roll equal to or higher than the DC, they succeed.

Example: \
Player A wants to climb a slick cliff face. \
- GM sets a DC of 10 and tells Player A to roll Might and Agility, as they fit climbing well. \
- Player A references their character sheet, which says they have a d8 Might and d6 Agility, and consequently rolls these two dice. \
- They roll a 3 and a 3, totalling 6. \
- This would normally mean they fail the roll, preferably in an interesting way, such as:
 - A rock tumbles loudly, alerting a dangerous beast of their presence \
 - They fall and take a point of damage \
 - The cliff begins to move? Uh-oh.

However, in Titanslayer rolling the same number on both dice is actually a #term("Critical Roll"), so not all hope is lost!

=== Critical Rolls
<critical-rolls>
When you roll the same number on both #term[Attribute Dice] for an
#term[Action Roll] it causes a #term("Critical Roll", is_definition: true). When a #term[Critical Roll] happens, you roll the highest #term("Attribute Die", key: "Attribute Dice") of the roll again, and add it to the total.

Continuing our example from earlier: \
- Player A rolled a crit! \
- Their highest die was their Might, a d8, so they add another d8 to the roll. \
- This time they roll a 4, making their total 3+3+4 = 10, which means they succeed the check.

=== Boons & Banes
<boons-banes>
Certain advantageous or disadvantageous situations can give a roll #term("Boons", is_definition: true) or #term("Banes", is_definition: true). 
Which are stacking conditions that give an extra die starting at a d4, increasing in size per stack, that is added or subtracted to rolls, respectively.

Boon(N) denotes N stacks of Boon. E.g. Boon(2) means add a d6 to the
roll.

Stacks of #term[Boons] and #term[Banes] cancel each other out, so Boon(3) and Bane(2)would result in Boon(1), meaning you'd add a d4 to the roll.

#figure(
  align(center)[#table(
    columns: 7,
    align: (left,left,left,left,left,left,left,),
    table.header([Stacks], [1], [2], [3], [4], [5], [6],),
    table.hline(),
    [Die], [d4], [d6], [d8], [d10], [d12], [d20],
  )]
  , kind: table
  )

=== Additional Successes
<additional-successes>
You succeed by meeting or beating the DC of an #term[Action Roll];,
and you gain an additional #term("Success", is_definition: true) for each 5 you roll above
the DC.

The benefit of a #term[Success] varies depending on the Action you
were doing. Maybe you find more of the herbs you were searching for? Or
you hid at just the right time to overhear a secretive conversation?

Some rolls don't follow the rule that each 5 above the DC gives a
#term[Success]. Attack Rolls for example instead target an opponent's
#term[Damage Thresholds];, giving +1 #term[Success] for each
threshold you hit (and then for each +5 after the last threshold).

#term("Successes", key: "Success") gained when Attacking usually grant +1 damage to the Attack, but some unique abilities might give different effects.
You might for example encounter an electrified shark-jellyfish hybrid that stuns its prey --- attacking with a shock that reduces your #term("Action Point", key: "Action Points") regeneration by 1 for each #term[Success], instead of dealing damage directly.

== Tag Team Rolls
<tag-team-rolls>
Once per #term[Shift] per character, players may initiate a #term("Tag Team Roll", is_definition: true).

To initiate a #term[Tag Team Roll], each participant spends 1 Focus in addition to what other resources they would normally spend and makes their respective rolls to construct a pool of die results. To resolve the roll, the players choose 2 dice from the constructed pool, which becomes the result of the roll.

The roll counts as an #term[Action Roll], and any features or modifications that would activate from a roll do so as normal. If multiple characters would trigger the same effect, only one resolves.

The GM can at any point initiate a #term[Tag Team Roll] for the party, with no cost to the characters.

#term("Tag Team Rolls", key: "Tag Team Roll"). can be initiated during combat, given that all participants act during the same #term[Phase].


= Character creation
<character-creation-mutations>
Everyone needs a character in order to play. The stats of the player is
tied to their background and heritage, so the mechanics a player will be
specializing in is based on who they choose to be.

All characters start with some base stats: \
Max #term[Strain]: 8 \
Max #term[Focus]: 8 \
Base #term[Speed]: 4 Spaces

Each character has 4 #term[Attributes]. Each #term("Attribute", key: "Attributes", is_definition: true) is represented by a die of size d4-d12, mapping to a modifier of 0-4.

#figure(
  align(center)[#table(
    columns: (15%, 40%, 40%),
    align: (left,left,left,),
    table.header([Attribute], [Description], [Effect],),
    table.hline(),
    term("Might", is_definition: true), [Strength and endurance], [\+ mod to Strain and carrying
    capacity],
    term("Agility", is_definition: true), [Speed, dexterity, flexibility and balance], [\+ mod to
    Speed],
    term("Insight", is_definition: true), [Ability to discover and reason about information], [\+
    mod to crits, rolls with boon and rolls when flanking],
    term("Presence", is_definition: true), [Inner focus and the power to inspire or command], [\+
    mod to Focus],
  )]
  , kind: table
  )

On creation, arrange \[d4, d6, d6, d8\] how you want your character's
attributes to be.

== Titles
At creation and after big moments in the campaign, you earn #term("Titles", is_definition: true).
#term[Titles] are primarily narrative in that they describe your character, and
may be referred to at any time by either the player or GM for roleplay
purposes. Titles provide a static bonus to a roll when invoked, which
can be done for 1 focus in situations where it makes narrative sense.

== Mutations
Choose any #term("Mutations") you'd like from the mutation table
(#link("https://docs.google.com/document/d/1zkKA1ifbYqop71Pm5RrK5ofa_Z9V3Yyyje8CdN3MKn4/edit?tab=t.eulwm9krcgii")[document];),
or make up your own, then notify the GM of your choices. You have 2 free
mutations, but purely cosmetic costs no slots. For each mutation past
the first 2, one of your Focus is permanently Corrupted.

== Archetypes
If you're not sure where to start in terms of attributes, weapons,
armor, and equipment, here are some options.

If you want to play a character who can move quickly around the
battlefield and attack at range, Agility and Insight are good choices
for your highest Attribute scores. Take 2 Kunai/Daggers (your choice), a
Longbow, a quiver, and either a bandolier with 3 more Kunai/Daggers or
Light Armor.

If you want your character to be able to withstand a lot of attacks, you should focus on Might and Insight. Take a Warhammer, Heavy Shield, Boomerang, and Heavy Armor. You may want an extra Boomerang or two. It's important to have a repair kit since this build is intended to block damage using the durability of your armor and shield.

Alternatively, you can focus on dealing damage in melee, in which case Might and Presence are important Attributes. Choose a Greatsword, Sling, and Medium Armor. 

The absolute necessities are a backpack containing a bedroll and 8
Rations. Feel free to get any other items you want and have space for,
but consider leaving some room for other items you pick up along the
way. It's a good idea to make sure at least one person in your party has
a mess kit, rope, repair kit (the more the better), and torches.

= Combat
<combat>
== Initiative and action economy
<initiative-and-action-economy>
Each round of combat happens in two phases following the Tortoise & Hare
style of initiative. Players use #term[Action Points] (AP) to perform
various actions and can choose to start each turn #term("Rushed", is_definition: true) (2 AP,
acts during first phase) or #term("Methodical", is_definition: true) (3 AP, acts during
second phase). Action points are regenerated at the start of the chosen
phase.

At max strain you gain the #strong[Dying] condition, where any damage
taken past 0 reduces max AP by 1. If your max AP is 0, you die.

== Actions
<actions>
If nothing else is specified, an Action costs 1 AP to use. Actions (and
Free Actions) are subject to the #strong[Repeated Action Penalty] (RAP),
which means every subsequent use of an Action in your Phase costs 1
additional AP.

#strong[Attack] with your main hand weapon. \
#strong[Offhand Attack] with your offhand weapon. Can be taken directly
after an Attack misses, potentially negating the opponent's Retaliation
chance, or granting them another. \
#strong[Cast] a spell (varying cost). \
#strong[Help] an ally with their next Action Roll (except Help), given
that you can meaningfully impact it in the narrative, granting them a
Boon(1 + 1 per Success). \
#strong[Shove] a target 1 Space + 1 per success. 2 Spaces of Shove can
be traded to knock the target Prone. Targets Evasion. \
#strong[Grapple] a target, granting a +\[Success\] bonus to attacks
against the target. Targets Evasion? \
#strong[Ready] an Action, paying its AP cost immediately. \
#strong[Interact] with or #strong[Use] an item. \
#strong[Parley] with a target.

== Free Actions
<free-actions>
Free Actions are 0 AP actions you can take on your turn. Do note that
Free Actions are affected by RAP, so taking the same Free Action
multiple times will end up costing AP.

#strong[Move] up to your Speed. \
#strong[Stow] a Weapon or object held in your hand(s) into your quick
draw inventory. Stowing into your inventory costs 1 AP. \
#strong[Draw] a Weapon or object in your quick draw inventory into your
hand(s). Drawing from your inventory costs 1 AP. \
#strong[Charge] your next Action, delaying its activation until the end
of the next Phase, but granting you Boon(3) on it. You must pick a
target Space for the Action when picking this option. \
#strong[Disengage] from a single enemy, preventing your own movement to
trigger Retaliations from them this phase. \
#strong[Push] yourself, taking 1 Fatigue in order to perform one of the
following effects:
- (repeatable +1 cost) 1 Fatigue for Boon(1) \
- 2 Fatigue to gain 1 AP

Free Actions, just like regular Actions, are affected by RAP.

== Reactions
<reactions>
Characters can take #strong[Reactions] outside of their own Phase,
usually at the cost of Focus. Each Reaction has a specific trigger that
lets characters use it. One Action can only Trigger one Reaction.

#figure(
  align(center)[#table(
    columns: (25%, 15%, 30%, 30%),
    align: (left,left,left,left,),
    table.header([Name], [Cost], [Trigger\*], [Effect],),
    table.hline(),
    [Opportunity Attack], [1 Focus], [When target moves carelessly from
    a Space in your Threat], [Take a Basic Attack\*\* action.],
    [Activate Readied Action], [\-], [Custom], [Custom],
    [Protect], [1 Focus], [When an adjacent target is hit by an
    attack], [The attack roll counts for both of you, but the damage
    taken is halved.],
  )]
  , kind: table
  )

== Attacks and defense
<attacks-and-defense>
An attack is normally rolled by using two #term[Attribute Dice] relevant to the #term("Weapon", glossary_type: glossary_types.item) used, as well as any other relevant bonuses. All weapons have a base damage of 1.

There are three #term[Damage Thresholds] that determine the damage dealt; #term[Evasion], #term[Heavy Hit] and #term[Brutal Hit]. 
Different characters have different thresholds based on their stats as described in the #link(<armor>, "Armor Table").

A roll higher than a creature's evasion is a hit. 
Rolling above the Heavy and Brutal hit thresholds each add +1 success and may trigger additional abilities. 
Every +5 above Brutal hit counts as a +1 success. Normally one success means +1 damage, unless replaced with other abilities. 
Certain actions such as #strong[grapple] ignores Heavy and Brutal thresholds and targets Evasion directly, therefore using the standard +5 rule.

You can #strong[block] damage with armour and weapons with the Durable
tag. This requires no reaction, and when blocking the equipment takes
the Strain instead of you, including any excess damage. If the equipment
goes to 0 HP, it's considered Broken and grants no benefit.

If Armor is Broken, your Evasion and Speed remain the same, but your Heavy and Brutal Hit thresholds are calculated as if you have no armor.

Certain effects grant #strong[Guard,] which grants temporary HP that are
instead reduced when you take damage. Separate effects granting Guard do
not stack.

== Retaliations
<retaliations>
If you take 0 Damage from an Attack, whether by Evading, Blocking or
other means, or if you have Guard remaining after it, you may Retaliate.
Retaliation effects happen automatically with no roll needed.

Below is a list of standard Retaliations, but certain Weapons,
Mutations, and Feats can unlock more options.

#figure(
  align(center)[#table(
    columns: (12%, 33.33%, 50%),
    align: (left,left,left,),
    table.header([], [Prerequisite], [Effect],),
    table.hline(),
    [Step], [], [Step 1 + AGI mod Spaces without provoking opportunity
    attacks],
    [Guard], [], [Gain 1 Guard until the start of your next acting
    Phase],
    [Counter], [Targeted by attack within Threat range], [Deal 1 damage
    to the Attacker],
    [Parry], [Targeted by attack within Threat range while wielding a
    shield], [You parry the attack, leaving the Attacker open. The first
    Action Roll against them before the end of the next Phase has
    Boon(1). Perfect Parry: If the shield's Active is what made this
    Retaliation possible, the effect increases to Boon(3).],
  )]
  , kind: table
  )

=== Retaliation Enhancements
<retaliation-enhancements>
When Retaliating your options are enhanced based on what Weapons you currently wield.
Only one enhancement can be used at a time.

Melee Light Weapons: When you Counter you may Step at half range

Melee Medium Weapons: When you Counter you leave an open wound on
the target. If they move before the end of the current phase, they take
1 damage.

Melee Heavy Weapons: When you Counter you may Push the Attacker MIG
mod / Size difference Spaces.

Ranged Weapons: 

= Equipment
<equipment>
Each character has a #term("Carrying Capacity", is_definition: true) equal to 5 + Might Mod.
Items and Equipment have an amount of #term[Bulk] (usually 1).
If you're carrying more than your #term("Capacity", key: "Carrying Capacity") at the end of a #term[Shift], you get #term[Fatigue] equal to the amount of extra #term[Bulk] you're carrying (total #[Bulk] - #term[Carrying Capacity]).

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

= Exploration
<exploration>
Most of your time in this game will be spent adventuring in the mana-filled wild wastes of . 

Hador
Hadria
Geha
Narak
Shol
Tartus
Narotam
Nohu
Nouh
Sunrise
Ikeon


Retyx
Xeol
Xalio
Earthn't


The players must choose a “Party Caller” that informs the GM what actions the party will take when exploring.
Each day spent exploring is divided into six #term("Shifts", is_definition: true).
Usually, one ‘exploration activity' takes one #term("Shift", key: "Shifts") to perform.
The players can also choose to Push themselves, achieving two exploration actions per shift at the cost of accruing one #term[Fatigue].

At the start of each #term("Shift", key: "Shifts") spent inside of a #term("Mana Zone", key: "Mana Zones"), the GM will make an #term("Encounter Check", is_definition: true), which may have both positive and negative effects for the party.

Explorers will also need to sleep. If it has been a full day (6 #term[Shifts]) since the characters last slept, each subsequent shift they do not sleep will add one #term[Fatigue] to all PCs.

The exploration is acted out by charting a path through a hexgrid map.
Progress is driven by the players deciding what they would like to do
among these actions:

- #strong[Travel]
  - The party attempts to traverse a hex tile. This will take up two
    shifts if they are successful, but vehicles may shorten this time. When traversing terrain that is difficult to navigate, the navigator will make a check (Insight + Presence) to determine if the party can stay on course. \
- #strong[Search]
  - The party explores the hex tile they are currently in to look for
    interesting locations. Each member rolls a Search check (Insight +
    Insight). If enough cumulative successes are rolled, the party finds
    a location. This check is made easier if the players have a vague
    idea of where it is. \
- #strong[Hunt]
  - The participating characters all roll a hunting (Agility + Presence)
    check, and success depends on both the danger of the prey they are
    hunting and the type of terrain. If the amount of successes rolled is above the DC, the party locates the creature they are hunting. If the result is lower than the DC, but higher than the size of the hunting party, you encounter a random creature. If the amount of successes is lower
    than the size of the hunting party, they are ambushed by their prey.
    \
- #strong[Forage]
  - All participating characters roll forage (Intelligence +
    Intelligence) checks, and the DC depends on how bountiful the
    targeted area is. \
- #strong[Rest]
  - The party settle down to take a rest. Each player receives 2 Rest
    Points they can use to take the following actions:
    - 2 RP - #emph[Sleep] (once per day): Clear 1 fatigue, then gain the
      bonuses of #emph[Relax] and #emph[Refocus] \
    - 1 RP - #emph[Relax];: Clear half of your strain. \
    - 1 RP - #emph[Refocus];: Recover half of your expended focus. \
    - 1 RP - #emph[Keep Watch];: Roll a single Insight die. If the
      result is higher than the GMs encounter die, receive advance
      warning of threats to the party. \
    - 1 RP - #emph[Repair Item] (repeatable, requires a #link(<equipment-list>, "Repair Kit")): Choose and item and roll a repair check (Might + Insight). The item clears 1 + Successes Strain.

#pagebreak()
= Appendices
<appendices>

== Appendix A: Weapons
<appendix-a>

=== Weapons
<weapons-appendix>
#show figure: set block(breakable: true)
#set table.cell(breakable: false)
#figure(align(center)[#table(
  columns: (20%, 11%, 49%, 20%),
  align: (left, left, left, left),
  table.header([], [Roll], [Active\* (1 #term[Focus])], [Tags]),
  table.hline(),
  [Stiletto], [Agility + Insight], [Infiltrate:\ Use the target's Evasion as baseline when determining the thresholds for Heavy+ Hits.], [Light],
  [Kunai], [Agility + Insight], [Swift Strike:\ When you Move, you may make an Attack with this weapon.], [Light\ Thrown(5)],
  [Dagger], [Agility + Insight], [Dirty Fighting:\ Slice an exposed tendon or muscle, either halving the target's Speed until the end of the round or giving it Bane(1) on its next Attack.], [Light\ Thrown(5)],
  [Whip], [Agility + Insight], [Wrangle:\ Pull the target adjacent to you if it's smaller than you, or pull youself adjacent to it if it's larger than you. If you're the same size, you choose.], [Light\ Reach(3)],
  [Sword], [Might + Agility], [Lunge:\ You gain Reach(2) for this Attack\ Parry:\ You gain Guard(1)], [Versatile],
  [Rapier], [Agility + Presence], [Fencer:\ Step 1 Space without provoking Opportunity Attacks before or after making the Attack Roll.\ \ If you move directly towards the target, gain Boon(1) on the Attack Roll. If you move away from the target, gain 1 Guard, lasting until you move.], [One-handed], 
  [Rapier], [Agility + Presence], [Fencer:\ Step 1 Space without provoking Opportunity Attacks before or after making the Attack Roll.\ \ If you move directly towards the target, gain Boon(1) on the Attack Roll. If you move away from the target, prepare to counter, allowing you to #term[Retaliate] the next time someone moves into your #term[Threat].], [One-handed], 
  [Warhammer], [Might + Insight], [Can Opener:\ You may choose to attack the target's armor directly, without giving the target an opportunity to #term[Retaliate].], [Versatile\ Impact(1)],
  [Spear], [Might + Agility], [Piercing Thrust:\ Your attack pierces all enemies in a line. Each subsequent hit reduces the Attack Roll by 5.], [Versatile\ Reach(2)\ Thrown(5)],
  [Halberd], [Might + Agility], [Whirlwind:\ Attack all Spaces within half of Reach. Each subsequent hit reduces the attack roll by 5.], [Two-handed\ Reach(2)], 
  [Greatsword], [Might + Might], [Cleave:\ Attack three connecting spaces within the weapon's range. Each subsequent hit reduces the attack roll by 5.], [Heavy\ Two-handed\ Unwieldy(1)\ Sharp(1)],
  [Greathammer], [Might + Might], [Push:\ The Attack also pushes the target 1 per success Spaces.], [Heavy\ Two-handed\ Unwieldy(1)\ Sharp(1)],
  [], [], [], [],
  [Sling], [Might + Agility], [Ricochet:\ If your Attack hits, it bounces to a secondary target of your choice within half of the weapons range, dealing 1 damage.], [One-handed\ Ranged(8)\ Social Distancing],
  [Boomerang], [Agility + Insight], [Return:\ At the end of the current Phase the boomerang returns to your hand, dealing 1 damage to each unit it passes through on its way back.], [One-handed\ Thrown(8)],
  [Shortbow], [Agility + Insight], [Curved Shot:\ You may curve a shot to ignore the Cover of a target.], [Two-handed\ Ranged(10)\ Social Distancing], 
  [Longbow], [Agility + Insight], [Twin Arrows:\ You may make a single Attack Roll against two targets within the weapon's Range.], [Two-handed\ Ranged(12)\ Social Distancing],
  [Crossbow], [Agility + Insight], [Piercing Shot:\ Your attack pierces all enemies in a line. Each subsequent hit reduces the Attack Roll by 5.], [Two-handed\ Ranged(10)\ Impact(1)\ Loading(1)],
  [], [], [], [], 
  [Light Shield], [], [Block:\ When hit by an attack roll, raise your Damage Thresholds by 2.], [Super Light\ Durable(2)], 
  [Medium Shield], [Might + Insight], [Blocker:\ When hit by an attack roll, raise your Damage Thresholds by 3.], [Light\ Durable(3)\ Sharp(-1)], 
  [Heavy Shield], [Might + Insight], [Blockest:\ When hit by an attack roll, raise your Damage Thresholds by 4.], [Light\ Unwieldy(1)\ Durable(4)]
)])
\*Active effects modifying an attack must be used before making the Attack Roll.

=== Weapon Tags
<weapon-tags>
#figure(align(center)[#table(
  columns: (30%, 70%),
  align: (left, left, left, left),
  table.header([Name], [Effect]),
  table.hline(),
  [Light], [Can be wielded in the main- or off-hand.],
  [Super Light], [Cannot be used to make attacks. Can be wielded in the same hand as a Weapon that isn't two-handed and doesn't have Unwieldy, but that Weapon is treated as Unwieldy(1) without conferring the effect to other Weapons.], 
  [Super Light], [Cannot be used to make attacks, but leaves your hand open. If in the same hand as another Weapon, you lower the die size of both die for all Attack Rolls made with that weapon by 1. If you can't reduce the die size any further you instead halve the die result.], 
  [Versatile], [Can be wielded in the main-hand or with two hands. Wielding the Weapon in two hands grants +1 to Attack Rolls made with it.], 
  [One-handed], [Can be wielded in the main-hand.],
  [Two-handed], [Must be wielded with two hands.], 
  [Heavy], [This tag is used for the purposes of Bulk and abilities, such as retaliations, that use the size/weight of a weapon. A weapon with this tag also gains the Two-handed, Unwieldy(1), and Sharp(1) tags.],
  [Ranged(N)], [Can attack at a range of N. For every Space past N the Attack Roll gains -1.], 
  [Reach(N)], [You may make Melee Attacks targets within N Spaces with this weapon.], 
  [Thrown(N)], [Can be thrown to a range of N, landing in the last space before collision. For every Space past N the Attack Roll gains -1.], 
  [Unwieldy(N)], [Lower the die size of both die for all Weapon Attack Rolls made while this weapon is equipped by N. If you can't reduce the die size any further you instead halve the die result.], 
  [Durable(N)], [This weapon has N Max Strain.], 
  [Sharp(N)], [This weapon's base damage increases by N.], 
  [Impact(N)], [This weapon does +N damage to Armor, Equipment and Guard.],
  [Social Distancing], [Attacks made with this weapon while in a hostile creature's Threat are made with Bane(1)], 
  [Loading(N)], [The weapon must be loaded by taking an N AP Action in order to Attack with it. Loading while in a hostile creature's Threat triggers an Opportunity Attack from them.]
)])
#pagebreak()
= Glossary
<glossary>
\
#render_glossary()