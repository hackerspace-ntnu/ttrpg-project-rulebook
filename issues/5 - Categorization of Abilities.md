# Discussion
Limiting player options based on individual Attibute Mods can make sense, but we have to be careful about what we limit. Locking someone out of an ability for long can feel bad, but it can also work as a motivator.

Categorizing Attribute-locked abilities is easy enough (just tier them by Attribute Mod), but tiering general abilities is a bit more of a hassle. 
We'd have to tier them based on the sum of Attribute scores, and while that isn't too big of a problem to do, it might feel jarring to players that general abilities are categorized differently from Attribute-locked ones.

# Conclusion
Player Abilities and Weapon Abilities are separate from each other, and some Player Abilities can be limited to only be used with certain types of Weapons.

All Abilities are tagged as either Enhance, Active, or Passive.

All Abilities can be limited based on the following properties:
- Weapon Type (Melee/Ranged)
- Weapon Size (Light/Medium/Heavy and Arm Attachment(?))
- Weapon Tags (Reach, Impact, Thrown, etc.)
- Attribute 
  - For Weapon Abilities: one of the dice rolled by the Weapon must match the Attribute
  - For Player Abilities: The Player's Attribute Mod for the given Attribute must be equal to or higher than the Tier of the Ability
- Tier
  - For Weapon Abilities: Increases the cost of applying the Ability to the Weapon at Weapon creation
  - For Player Abilities: Limits when Players can pick Player Abilities

## Template
{
    "name": string,
    "category": string,
    "tag": string,
    "tier": int,
    "focus_cost": int,
    "ap_cost": int,
    "description": string,
    "valid_weapon_tags"?: string[],
    "valid_weapon_types"?: string[],
    "valid_weapon_sizes"?: string[],
    "invalid_weapon_tags"?: string[],
    "invalid_weapon_types"?: string[],
    "invalid_weapon_sizes"?: string[],
    "prerequisite_abilities"?: string[]
}