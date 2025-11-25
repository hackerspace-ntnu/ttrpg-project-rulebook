#import "../../scripts/glossary.typ": term, render_glossary, glossary_types

= Combat
<combat>
== Initiative and action economy
<initiative-and-action-economy>
#[Each round of combat happens in two #term("Phases", is_definition: true) following the Tortoise & Hare
style of initiative. Players use #term("Action Points", is_definition: true) (AP) to perform
various actions and can choose to start each turn #term("Rushed", is_definition: true) (2 AP,
acts during first phase) or #term("Methodical", is_definition: true) (3 AP, acts during
second phase). Action points are regenerated at the start of the chosen
phase.

At max #term[Strain] you gain the #term("Dying", is_definition: true) condition, where any additional damage reduces max AP by 1. If your max AP is 0, you die.]

== Actions
<actions>
#[If nothing else is specified, an Action costs 1 AP to use. Actions (and
Free Actions) are subject to the #term("Repeated Action Penalty", is_definition: true) (RAP),
which means every subsequent use of the same Action in your Phase costs 1
additional AP.

// TODO: Should all the actions be terms? Also, should Action, Free Action, etc. be terms in and of themselves?
#term("Attack", is_definition: true) with your main hand weapon. \
#term("Offhand Attack", is_definition: true) with your offhand weapon. Can be taken directly
after an Attack misses, potentially negating the opponent's Retaliation
chance, or granting them another. \
#term("Cast", is_definition: true) a spell (varying cost). \
#term("Help", is_definition: true) an ally with their next Action Roll (except Help), given
that you can meaningfully impact it in the narrative, granting them a
Boon(1 + 1 per Success). \
#term("Shove", is_definition: true) a target 1 Space + 1 per success. 2 Spaces of Shove can
be traded to knock the target Prone. Targets Evasion. \
#term("Grapple", is_definition: true) a target, granting a +\[Success\] bonus to attacks
against the target. Targets Evasion? \
#term("Ready", is_definition: true) an Action, paying its AP cost immediately. \
#term("Interact", is_definition: true) with or #term("Use", is_definition: true) an item. \
#term("Parley", is_definition: true) with a target.
]
== Free Actions
<free-actions>
#[Free Actions are 0 AP actions you can take on your turn. Do note that
Free Actions are affected by #term("RAP", key: "Repeated Action Penalty"), so taking the same Free Action
multiple times will end up costing AP.

#term("Move", is_definition: true) up to your Speed. \
#term("Stow", is_definition: true) a Weapon or object held in your hand(s) into your quick
draw inventory. Stowing into your inventory costs 1 AP. \
#term("Draw", is_definition: true) a Weapon or object in your quick draw inventory into your
hand(s). Drawing from your inventory costs 1 AP. \
#term("Charge", is_definition: true) your next Action, delaying its activation until the end
of the next Phase, but granting you Boon(3) on it. You must pick a
target Space for the Action when picking this option. \
#term("Disengage", is_definition: true) from a single enemy, preventing your own movement to
trigger Retaliations from them this phase. \
// TODO: We still need to fix Fatigue, so this action may change anyway, but I think it's also worded weirdly.
#term("Push", is_definition: true) yourself, taking #term[Fatigue] in order to perform one of the
following effects:
- (repeatable +1 cost) 1 Fatigue for Boon(1) \
- 2 Fatigue to gain 1 AP
]
== Reactions
<reactions>
#[Characters can take #term[Reactions] outside of their own #term("Phase", key: "Phases"), usually at the cost of #term[Focus].
Each #term[Reaction] has a specific trigger that let characters use it. 
One #term[Action] can only #term("Trigger", is_definition: true) one #term[Reaction]. 
A character can perform at most 1 #term[Reaction] in response to any particular #term[Action].

#figure(
  align(center)[#table(
    columns: (25%, 15%, 30%, 30%),
    align: (left,left,left,left,),
    table.header([Name], [Cost], [Trigger\*], [Effect],),
    table.hline(),
    [Opportunity Attack], [1 Focus], [When target moves carelessly from
    a Space in your #term[Threat]], [Take a Basic Attack\*\* action.],
    [Activate Readied Action], [\-], [Custom], [Custom],
    [Protect], [1 Focus], [When an adjacent target is hit by an
    attack], [The attack roll counts for both of you, but the damage taken is halved.], // TODO: Does this mean that the attack roll is applied to the protector's damage thresholds separately, meaning that one character could take more damage than the other?
  )]
  , kind: table
  )
]
== Attacks and defense
<attacks-and-defense>
An attack is normally rolled by using two #term[Attribute Dice] relevant to the weapon used, as well as any other relevant bonuses. All weapons have a base damage of 1. Unarmed attacks have a base damage of 0. When you take damage, increase your #term[Strain] by that amount.

Melee weapons usually have a #term("Threat", is_definition: true) of 1, meaning that you can attack things within 1 space of yourself. If you have a free hand, you can make unarmed attacks with #term[Threat] 1.

There are three #term("Damage Thresholds", is_definition: true) that determine the damage dealt; #term[Evasion], #term[Heavy Hit] and #term[Brutal Hit]. 
Different characters have different thresholds based on their stats as described in the #link(<armor>, "Armor Table").

A roll higher than a creature's #term[Evasion] is a hit. 
Rolling above the Heavy and Brutal hit thresholds each add +1 #term[Success] and may trigger additional abilities. 
Every +5 above Brutal hit counts as a +1 success. Normally one success means +1 damage, unless replaced with other abilities. 
Certain actions such as #term[Grapple] ignore #term("Heavy", key: "Heavy Hit") and #term("Brutal", key: "Brutal Hit") thresholds and target Evasion directly, therefore using the standard +5 rule.

You can #term("Block", is_definition: true) damage with armour and weapons with the Durable
tag. This requires no reaction, and when blocking the equipment takes
the Strain instead of you, including any excess damage. If the equipment
goes to 0 HP, it's considered Broken and grants no benefit.

If Armor is Broken, your Evasion and Speed remain the same, but your Heavy and Brutal Hit thresholds are calculated as if you have no armor.

// TODO: Need to be reworded to not use HP.
Certain effects grant #term("Guard", is_definition: true), which grants temporary HP that are
instead reduced when you take damage. Separate effects granting Guard do
not stack.

== Retaliations
<retaliations>
If you take 0 Damage from an Attack, whether by Evading, Blocking, or
other means, or if you have #term[Guard] remaining after it, you may Retaliate.
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
    [Guard], [], [Gain 1 #term[Guard] until the start of your next acting
    #term("Phase", key: "Phases")],
    [Counter], [Targeted by attack within #term[Threat] range], [Deal 1 damage
    to the Attacker],
    [Parry], [Targeted by attack within #term[Threat] range while wielding a
    shield], [You parry the attack, leaving the Attacker open. The first
    #term("Action Roll", key: "Action Rolls") against them before the end of the next Phase has
    #term("Boon(1)", key: "Boons"). \ Perfect Parry: If the shield's Active is what made this
    Retaliation possible, the effect increases to #term("Boon(3)", key: "Boons").],
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
