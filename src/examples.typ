#import "../scripts/tables.typ": encounterTable
#import "../scripts/glossary.typ": term, render_glossary, glossary_types

= Introduction
In this report, we will explore the
various factors that influence _fluid
dynamics_ in glaciers and how they
contribute to the formation and
behaviour of these natural structures.

// ANCHOR: This is an anchor, they come in many different flavours

== Fluid Dynamics in Glaciers
+ The climate
  - Temperature
  - Precipitation
+ The topography>
+ The geology
+ The ice properties
  - Viscosity
  - Density
  - Temperature

Glaciers as the one shown in
@glaciers will cease to exist if
we don't take action soon!


#show figure: set align(left)
#show image: set align(left)

#figure(
  image("../data/images/glacier.png", width: 70%, ),
  caption: [
    _Glaciers_ form an important part
    of the earth's climate system.
  ],
) <glaciers>

== Pseudocode Example
#let pseudocode(content, caption) = {
set par(justify: false)
figure(
  block(
    fill: luma(250), 
    radius: 3pt,
    stroke: .6pt + luma(200),
    inset:	(x: .45em, y: .65em),
    width: 100%,
    clip: false,
  [#align(left)[#content]]),
  caption: [#caption],
  supplement: "Codice",
  kind: "code",
)}

Here is an example of pseudocode
that demonstrates how to calculate
the flow rate of a glacier based on
various parameters:
#pseudocode(
  "function calculateGlacierFlowRate(temperature, slope, iceThickness) {
      // Constants
      const gravity = 9.81; // m/s^2
      const iceDensity = 917; // kg/m^3
      const flowFactor = 0.01; // empirical factor

      // Calculate the flow rate using Glen's Flow Law
      let flowRate = flowFactor * (iceDensity * gravity * slope * iceThickness^3) / (temperature + 273.15);
      
      return flowRate; // in m^3/s
  }",
  "Pseudocode to calculate glacier flow rate based on temperature, slope, and ice thickness."
)

== Data Table Example

#encounterTable(json("../data/tables/encounter_check.json"), "1d6")

== Terms and Glossary

#term("Action Roll", description: "A roll made by a player to determine the outcome of an action their character is attempting to perform, typically involving rolling dice and adding relevant modifiers.", separator: ": ", glossary_type: glossary_types.mechanic, is_definition: true)

#term("Critical Roll", description: "A roll where all dice show the same number, allowing the player to roll an additional die of their highest attribute and add it to the total.", separator: ": ", glossary_type: glossary_types.mechanic, is_definition: true)

#term("Attack", description: "An action taken by a character to deal damage to an opponent, usually involving an Action Roll against a Difficulty Class (DC).", separator: ": ", glossary_type: glossary_types.action, is_definition: true)

#term("Attack", description: "To make an attempt to deal damage to an opponent using a weapon or ability.", separator: ": ", glossary_type: glossary_types.mechanic, is_definition: true)

#pagebreak()
#term("Attack", description: " to make an attempt to deal damage to an opponent using a weapon or ability.", glossary_type: glossary_types.mechanic)

#term("Action Roll", description: "A roll made by a player to determine the outcome of an action their character is attempting to perform, typically involving rolling dice and adding relevant modifiers.", glossary_type: glossary_types.mechanic)
#pagebreak()
#term("Attack", description: " to make an attempt to deal damage to an opponent using a weapon or ability.", glossary_type: glossary_types.mechanic)

#pagebreak()
#render_glossary()