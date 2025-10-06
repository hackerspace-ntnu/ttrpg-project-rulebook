= Introduction
In this report, we will explore the
various factors that influence _fluid
dynamics_ in glaciers and how they
contribute to the formation and
behaviour of these natural structures.

== Fluid Dynamics in Glaciers
+ The climate
  - Temperature
  - Precipitation
+ The topography
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
  image("glacier.png", width: 70%, ),
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

#let encounterTable(data, dice) = {
table(
  columns: 3,
  table.header(dice, "Result", "Description"),
  // caption: [data.caption],
  ..data.effects.keys().enumerate().map(((i, key)) => (
    [#i],
    key,
    data.effects.at(key).description,
  )).flatten(),
)}

#encounterTable(json("encounters.json"), "1d6")
