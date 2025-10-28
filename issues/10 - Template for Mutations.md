# Discussion
å

We've previously talked about categorizing Mutations by Tiers, with higher Tier Mutations rendering more of the Player's Focus permanently Corrupted.

Mutations usually come with some visual component, and often give Abilities, which are tagged the same as other Abilities.

# Conclusion
Mutations are written as:
{
    "name": string,
    "category"?: string,
    "abilities": string[],
    "description": string,
    "tier": int,
}

"abilities" are just the names of Abilities found in "mutation_abilities.json". The data for these Abilities can be extracted from there.

Abilities gained from synergistic Mutations are handled by Abilities having a field for "prerequisite_abilities"
