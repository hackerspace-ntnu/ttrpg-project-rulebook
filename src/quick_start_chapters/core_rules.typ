#import "../../scripts/glossary.typ": term, render_glossary, glossary_types

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
