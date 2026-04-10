#import "../scripts/glossary.typ": term, render_glossary, glossary_types
#set page(
  numbering: "I",
)

// Laying out the first page(s)
#align(center)[
  #text(size: 24pt, weight: "bold")[Titanslayer Quick Start Guide]
]

#v(6em)

#outline(
  title: "Table of Contents",
  indent: auto
)

#pagebreak()

// Set rules for main document
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

// Chapter headings should be centered and larger than the default
#show heading.where(level: 1): it => place(
  top + center,
  it,
  float: true,
  scope: "parent"
)
#show heading.where(level: 1): set text(20pt)

/* Figures should be centered on the page, not in the columns.
   The captions for tables should be displayed above the table,
   and should be strong. If not a heading, the text should be scaled up a bit.
   */
#set figure(
  scope: "parent",
  placement: bottom
)
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.caption.where(kind: table): it => {
  let scale = 1.1em
  if it.body.func() == heading {scale = 1.0em}
  align(left)[#strong(text(scale, it.body))]
}

/* References to headings should link to the location, with text
   from the provided supplement or the body of the heading if none.
   References to figures should link to the location, with text
   from the body of the caption plus the supplement, if one exists.
   References should be bolded.
   */
#show ref: it => {
  let el = it.element
  if el == none or el.func() != heading { return it }
  if type(it.supplement) == content {
    link(el.location(), it.supplement)
  } else {
    link(el.location(), el.body)
  }
}
#show ref: it => {
  let el = it.element
  if el == none or el.func() != figure { return it }
  let ta = none
  if el.supplement != none {ta = [ #el.supplement]}
  let b = el.caption.body
  if b.func() == heading {b = b.body}
  link(el.location(), [#b #ta])
}
#show ref: strong

// Bringing in all of the chapters
#include "quick_start_chapters/makkeo.typ"
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
#include "quick_start_chapters/setting.typ"
#pagebreak()

// Changing the styling for the appendices and onwards
#set page(
  columns: 1,
)
#set figure(
  scope: "column",
  placement: none
)
#include "quick_start_chapters/appendices.typ"

#pagebreak()
= Glossary
<glossary>
\
#render_glossary()
