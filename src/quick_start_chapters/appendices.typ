#import "../../scripts/glossary.typ": term, render_glossary, glossary_types
#import "../../scripts/tables.typ": weaponTagsTable
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
  [Light Shield], [], [Block:\ When hit by an attack roll, raise your Damage Thresholds by 2.], [Arm Attachment\ Durable(2)], 
  [Medium Shield], [Might + Insight], [Blocker:\ When hit by an attack roll, raise your Damage Thresholds by 3.], [Light\ Durable(3)\ Sharp(-1)], 
  [Heavy Shield], [Might + Insight], [Blockest:\ When hit by an attack roll, raise your Damage Thresholds by 4.], [Light\ Unwieldy(1)\ Durable(4)]
)])
\*Active effects modifying an attack must be used before making the Attack Roll.

=== Weapon Tags
<weapon-tags>
#weaponTagsTable(json("../../data/json/weapon_tags.json"))