#import "../../scripts/glossary.typ": term, render_glossary, glossary_types, boon, bane

= Character Progression
<character-progression>

Characters in Titanslayer can grow in a multitude of ways.
#term[Abilities] can be gained both during and outside exploration, while #term("Attribute", key: "Attributes") increases and #term[Mutations] are primarily gained out in the field. 

In the end, you'll likely have to brave the corrupted wilds if you want your character to grow, as both #term[Experience Points] and #term[Scrap] in large are gained through taking down valuable prey and uncovering long lost secrets.

== Experience Points
You gain #term("Experience Points", is_definition: true) (XP) through a number of triggers that can each count once per in-game day:
 - Defeat a strong foe
 - Solve a puzzle
 - Explore a hidden area
 - Complete a quest
 - Resolve a conflict nonviolently
 - Act in line with your character traits

When you reach certain XP thresholds, you're able to raise one of your #term[Attributes] by 1, and freely gain 1 #term("Ability", key: "Abilities") you qualify for.
The amount of XP needed scales with the total of your #term[Attribute Modifiers], and equals $2^(mod "total"-4)$.

#table(
  columns: 2,
  align: (left, left),
  table.header([Attribute Mod total], [XP threshold]),
  table.hline(),
  [8], [16],
  [9], [32],
  [10], [64],
  [11], [128],
  [12], [256]
)

== Scrap
In a world where trade is the favored form of transaction, #term("Scrap", is_definition: true) is an abstraction of the buying power of the items and information you collect.
It is primarily gained through selling items and information you encounter in the wilds, and completing #term[Quests].

#term[Scrap] can be used to buy #link(<equipment-list>)[Equipment], crafting materials, vehicles, and so on. In addition, it can be spent to perform an activity, such as hiring someone who can teach you a new #term("Ability", key: "Abilities") or help you craft an item.

== Mutations
When wandering into the mana-infested wilds, it's not uncommon for you to return different from how you were when you departed.
Exposure to high levels of #term[Mana Saturation] can cause your body to #term[Mutate], granting potentially greanting you #term[Abilities] you didn't have access to before at the cost of your humanity.

Whenever you use #term("Saturated", key: "Saturated Focus") or #term("Corrupted Focus", is_definition: true) to power an #term("Ability", key: "Abilities") you must roll a #term("Saturation Check", key: "Saturation Checks", is_definition: true) to see if you #term[Mutate].
The DC for this check is equal to $8 + 2*"Saturation Level"$, based on the #term("Saturation Level", key: "Saturation Levels") of the hex you're in.

If you succeed the check you clear the #term("Saturation", key: "Saturated Focus") from the #term[Focus] and gain #boon("N") for the #term("Action", key: "Actions"), where N is equal to the amount of #term("Saturation", key: "Saturated Focus") cleared this way.
If you fail the check, you instead #term[Mutate].

When you #term("Mutate", is_definition: true), you roll on the #link(<mutation-table>)[Mutation Table] to determine what #term("Mutation", key: "Mutations") you get.
Unless otherwise specified, you may choose where on your body the #term("Mutation", key: "Mutations") apparates, and what it looks like.

After #term("Mutating", key: "Mutate") you permanently #term("Corrupt", key: "Corrupted Focus") an amount of #term[Focus] equal to the tier of the #term("Mutation", key: "Mutations"), then clear any #term[Saturated Focus] you have.
If all your #term[Focus] is #term("Corrupted", key: "Corrupted Focus") after mutating, you immediately turn into an #term("Aberrant", key: "Aberrants") and lose control of your character.

== Abilities
#term("Abilities", is_definition: true) are special features that give you new options for combat, exploration, and roleplay.
There are three different types of #term[Abilities] you can gain, each with their own unique method of acquisition:
- Spending #term("Scrap", key: "Scrap") to learn an #term("Studied Ability", key: "Studied Abilities") from an NPC or institution that offers it.
- Gaining enough #term("Experience Points", key: "Experience Points") to increase one of your #term[Attributes], which allows you to freely gain one #term("Core Ability", key: "Core Abilities") you qualify for.
- Gaining a #term("Mutation", key: "Mutations") that grants you an #term("Ability", key: "Abilities").

=== Studied Abilities
#term("Studied Abilities", is_definition: true) are #term[Abilities] that you can learn from NPCs or institutions in exchange for #term[Scrap].
They are usually more specialized than #term("Core Abilities", key: "Core Abilities"), and can be related to specific weapons, playstyles, or even specific pieces of equipment.

#term[Studied Abilities] come in packets of 3 tiered abilities, with each ability in a packet being centered around the same theme or playstyle.
To unlock the next tier of abilities in the packet, you must have already gained the previous tier.

=== Core Abilities
#term("Core Abilities", is_definition: true) are #term[Abilities] that are tied to your #term[Attributes], and are gained when you increase them through hitting #term("Experience Points", key: "Experience Points") thresholds.
When gaining a #term("Core Ability", key: "Core Abilities"), you can choose one corresponding to any #term("Attribute", key: "Attributes"), though you must qualify for it.

To qualify for a #term("Core Ability", key: "Core Abilities"), your #term("Attribute Modifier", key: "Attribute Modifiers") for the relevant stat must be equal to or higher than its tier.

=== Mutation Abilities
#term("Mutation Abilities", is_definition: true) are #term[Abilities] that are granted by #term[Mutations] you gain through #term("Mutating", key: "Mutate") after failing a #term("Saturation Check", key: "Saturation Checks").
These are usually quite powerful, but come with the cost of permanently #term("Corrupting", key: "Corrupted Focus") your #term[Focus] and the gradual loss of your humanity.

