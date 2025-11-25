#import "../../scripts/glossary.typ": term, render_glossary, glossary_types

= Exploration
<exploration>
Most of your time in this game will be spent adventuring in the mana-filled wild wastes of Makkeo.

The players must choose a “Party Caller” that informs the GM what actions the party will take when exploring.
Each day spent exploring is divided into six #term("Shifts", is_definition: true).
Usually, one ‘exploration activity' takes one #term("Shift", key: "Shifts") to perform.
The players can also choose to Push themselves, achieving two exploration actions per shift at the cost of accruing one #term[Fatigue].

// TODO: Need to define Mana Zones.
At the start of each #term("Shift", key: "Shifts") spent inside of a #term("Mana Zone", key: "Mana Zones"), the GM will make an #term("Encounter Check", is_definition: true), which may have both positive and negative effects for the party.

Explorers will also need to sleep. If it has been a full day (6 #term[Shifts]) since the characters last slept, each subsequent shift they do not sleep will add one #term[Fatigue] to all PCs.

The exploration is acted out by charting a path through a hexgrid map.
Progress is driven by the players deciding what they would like to do
among these actions:

// REVIEW: "Mana Zone" isn't an action though?
- #term("Mana Zone", is_definition: true)
  - Text \
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
    - 2 RP - #emph[Sleep] (once per day): Clear 1 fatigue, then gain the
      bonuses of #emph[Relax] and #emph[Refocus] \
    - 1 RP - #emph[Relax];: Clear half of your strain. \
    - 1 RP - #emph[Refocus];: Recover half of your expended focus. \
    - 1 RP - #emph[Keep Watch];: Roll a single Insight die. If the
      result is higher than the GMs encounter die, receive advance
      warning of threats to the party. \
    - 1 RP - #emph[Repair Item];: (repeatable, requires a #link(<equipment-list>, "Repair Kit")): Choose an item and roll a repair check (Might + Insight). The item clears 1 + Successes Strain.
