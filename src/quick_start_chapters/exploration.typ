#import "../../scripts/glossary.typ": term, render_glossary, glossary_types

= Exploration
<exploration>
== Mana Zones
Most of your time in this game will be spent adventuring in the mana-filled wild wastes of #term[Makkeo].

The main brunt of interesting locations to explore that haven't already been picked clean by previous explorers are #term("Mana Zones", is_definition: true).
#term[Mana Gates] create large fields of dense Mana that allow water to be retained by the ecosystem and cause drastic mutations in all life.
#term[Mana Zones] are several days of travel across and fraught with danger, but also opportunity.

At the start of each #term("Shift", key: "Shifts") spent inside of a #term("Mana Zone", key: "Mana Zones"), the GM will make an #term("Encounter Check", key: "Encounter Checks"), which may have both positive and negative effects for the party.

== Shifts
A day is divided into 6 #term[Shift], with one activity in Exploration mode usually taking one  #term("Shift", key: "Shifts").

Explorers need rest. If a day's worth of #term("Shift", key: "Shifts") has passed since the party last used the Rest Activity, they will lose 2 #term[Grit] at the end of each #term[Shift].
Similarly, at the end of each day, if a character has not consumed a ration, they lose 2 #term[Grit] for each day gone without food.


== Exploration Activities
The players must choose a “Party Caller” that informs the GM what actions the party will take when exploring.
Each day spent exploring is divided into six #term("Shifts", is_definition: true).
Usually, one 'exploration activity' takes one #term("Shift", key: "Shifts") to perform.
The party can as a group decide to push themselves, each losing 2 #term[Grit] to perform an additional #term("Exploration Activity", key: "Exploration Activities").

The exploration is acted out by charting a path through a hexgrid map.
Progress is driven by the players deciding what they would like to do
among these actions:

- #term("Travel", is_definition: true)
  - The party attempts to traverse a hex tile. This will take up two
    shifts if they are successful, but vehicles may shorten this time. When traversing terrain that is difficult to navigate, the navigator will make a check (Insight + Presence) to determine if the party can stay on course. \
- #term("Search", is_definition: true)
  - The party explores the hex tile they are currently in to look for
    interesting locations. Each member rolls a Search check (Insight +
    Insight). If enough cumulative successes are rolled, the party finds
    a location. This check is made easier if the players have a vague
    idea of where it is. \
- #term("Hunt", is_definition: true)
  - The participating characters all roll a hunting (Agility + Presence)
    check, and success depends on both the danger of the prey they are
    hunting and the type of terrain. If the amount of successes rolled is above the DC, the party locates the creature they are hunting. If the result is lower than the DC, but higher than the size of the hunting party, you encounter a random creature. If the amount of successes is lower
    than the size of the hunting party, they are ambushed by their prey.
    \
- #term("Forage", is_definition: true)
  - All participating characters roll forage (Intelligence +
    Intelligence) checks, and the DC depends on how bountiful the
    targeted area is. \
- #term("Rest", is_definition: true)
  - The party settle down to take a rest. Each player receives 2 Rest
    Points they can use to take the following actions:
    - 2 RP - #emph[Sleep] (once per day): Clear 1 #term("Wound", key: "Wounds"), then gain the bonuses of #emph[Relax] and #emph[Refocus] \
    - 1 RP - #emph[Relax];: Ragain half of your #term[Grit]. \
    - 1 RP - #emph[Refocus];: Recover half of your expended focus. \
    - 1 RP - #emph[Keep Watch];: Roll a single Insight die. If the
      result is higher than the GMs encounter die, receive advance
      warning of threats to the party. \
    - 1 RP - #emph[Repair Item];: (repeatable, requires a #link(<equipment-list>, "Repair Kit")): Choose an item and roll a repair check (Might + Insight). The item clears 1 + Successes Durability.

== Encounter Checks
To make an #term("Encounter Check", key: "Encounter Checks", is_definition: true) the GM rolls 2d8, with a 1 on either die meaning the Party will stumble upon the hex's Location, and an 8 on either die meaning an Encounter happens. 
To determine the exact Encounter or Location, the GM consults the hex's roll tables.

If the #term("Encounter Check", key: "Encounter Checks") crits (same number on both dice), the following happens:
- A #term("Mana Surge", key: "Mana Surges") of intensity equal to the dice value occurs
- The GM rolls the #term("Encounter Check", key: "Encounter Checks") again, adding whatever effects it causes to the result

== Mana Surge
Sometimes the air in #term[Mana Zones] grows thick and tremble, as a wave of concentrated Mana spills from the environment.
These are mostly caused by #term[Encounter Checks], but can also occur from events such as entering areas of concentrated Mana or battling a #term("Titan", key: "Titans").

When a #term("Mana Surge", key: "Mana Surges", is_definition: true) occurs, the following happens:
- All players must make a Saturation Roll (#term[Might] + #term[Presence]) against a DC of 7 + the Intensity of the surge, or #term("Saturate", key: "Saturated Focus") 1 + 1 per 5 they failed by #term[Focus].
- The GM gains an number of #term[Environment Tokens] equal to the Intensity of the surge.
