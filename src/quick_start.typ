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
)

#include "quick_start_chapters/setting.typ"
#include "quick_start_chapters/core_rules.typ"
#include "quick_start_chapters/character_creation.typ"
#include "quick_start_chapters/combat.typ"
#include "quick_start_chapters/equipment.typ"
#include "quick_start_chapters/exploration.typ"

#pagebreak()
#include "quick_start_chapters/appendices.typ"

#pagebreak()
= Glossary
<glossary>
\
#render_glossary()
