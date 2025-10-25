#import "../../scripts/glossary.typ": term, render_glossary, glossary_types

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