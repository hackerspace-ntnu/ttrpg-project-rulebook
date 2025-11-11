#import "../../scripts/glossary.typ": term, render_glossary, glossary_types

= Character Progression
<character-progression>

Characters in Titanslayer can grow in a multitude of ways.
#term[Abilities] and #term[Titles] can be gained both during and outside exploration, while #term("Attribute", key: "Attributes") increases and #term[Mutations] are primarily gained out in the field. 

In the end though, you'll likely have to brave the corrupted wilds if you want your character to grow, as both #term[Experience Points] and #term[Downtime Points] in large are gained through taking down valuable prey and uncovering long lost secrets.

== Experience Points
You gain #term("Experience Points", is_definition: true) (XP) through a number of triggers that can happen once per in-game day:
 - Defeating a strong foe
 - Solving a puzzle
 - Exploring a hidden area
 - Completing a quest
 - Solve a conflict without violence
 - Acting in line with your character traits

When you reach certain XP thresholds, you're able to raise one of your #term[Attributes] by 1, and freely gain 1 #term("Ability", key: "Abilities") you qualify for.
The amount of XP needed scales with the total of your #term[Attribute Modifiers], and equals $2^(mod t o t a l)$.

#table(
  columns: 2,
  align: (left, left),
  table.header([Attribute Mod total], [XP threshold]),
  table.hline(),
  [4], [16],
  [5], [32],
  [6], [64],
  [7], [128],
  [8], [256]
)

== Downtime Points
In a world where trade is the favored form of transaction, #term("Downtime Points", is_definition: true) is an abstraction of the buying power the items and information you collect holds.
It is primarily gained through selling items and information you encounter in the wilds, and completing #term[Quests].

#term[Downtime Points] can be used to buy #link(<equipment-list>)[Equipment], ...

== Mutations

== Abilities

