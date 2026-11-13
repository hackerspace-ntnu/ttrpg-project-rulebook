#let overlay(img, color) = layout(bounds => {
  let size = measure(img, ..bounds)
  img
  place(top + left, block(..size, fill: color))
})

#set page(
  flipped: true,
  margin: (x: 1cm, y: 1cm),
  columns: 2,
  background: overlay(scale(image("../data/art/location_desertruins1_bg.png", width: 100%, height: 100%), x: 100%), white.transparentize(10%)),
)

#set text(
  size: 16pt,
  font: ("MS PGothic", "MS UI Gothic", "Yu Mincho", "Yu Gothic", "Meiryo"),
)

#set par(
  spacing: 0.5em,
  justify: true,
)

#image(
  "../data/art/poster_1_bg.png",
  width: 100%,
  height: 100%
)

#align(
  horizon,
  [
    A post-apocalyptic TTRPG at the dawn of humanity's revolt against the Titans spawning into the world through Mana Gates. Mana corrupts everything  around it, leading to people, plants, and even the landscape itself mutating in odd ways.
\
\
Two decades ago, the first Titan was felled at the hands of Sorin Fajiri, bringing hope to the world. But with no more Titans slain since then, the people are growing restless. Yet some from the new generation dream of doing the impossible once again. Claiming the title of Titanslayer.
\
\
    #align(
      center,
      [
        #image("../data/images/itch-qr.png", width: 10em, height: 10em)
        Check it out on itch.io!
      ]
    )
  ]
)
