#import "../scripts/glossary.typ": term, render_glossary, glossary_types
#set page(
  numbering: "I",
)

#align(center)[
  #text(size: 24pt, weight: "bold")[Titanslayer Quick Start Guide]
]

#v(8em)

#outline(
  title: "Table of Contents",
  indent: auto
)

#pagebreak()

#context counter(page).update(1)
#set page(
  numbering: "1",
  columns: 2,
  margin: (x: 1.75cm, top: 1.75cm, bottom: 1.75cm),
)

#set columns(gutter: 1.5cm)

#set par(
  justify: true,
)
#show heading.where(level: 1): it => place(
  top + center,
  it,
  float: true,
  scope: "parent"
)
#show heading.where(level: 1): set text(20pt)
#set figure(
  scope: "parent",
  placement: bottom
)
#include "quick_start_chapters/setting.typ"
#pagebreak()
#include "quick_start_chapters/core_rules.typ"
#pagebreak()
#include "quick_start_chapters/character_creation.typ"
#pagebreak()
#include "quick_start_chapters/character_progression.typ"
#pagebreak()
#include "quick_start_chapters/combat.typ"
#pagebreak()
#include "quick_start_chapters/equipment.typ"
#pagebreak()
#include "quick_start_chapters/exploration.typ"

#pagebreak()
#set figure(
  scope: "column",
  placement: none
)
#include "quick_start_chapters/appendices.typ"

#pagebreak()
#set page(
  columns: 1,
)
= Glossary
<glossary>
\
#render_glossary()
