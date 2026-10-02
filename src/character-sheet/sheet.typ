#set page(
  margin: (x: 1cm, top: 1cm, bottom: 1cm),
  fill: rgb("#ffe8d1")
)

#let textColor = rgb("#282828")
#let fadedTextColor = rgb("#ff8282")
#let backgroundColor = rgb("#ffe8d1")
#let shadedBackgroundColor = rgb("#ffe8d1")

#set text(
  fill: textColor,
)

#set line(
  stroke: textColor,
)

#set rect(
  stroke: textColor,
)

#set box(
  stroke: textColor,
)

#let fadedText(myText) = {
  text(myText, fill: fadedTextColor)
}

#let input(title, height: 2em) = {
  set par(spacing: 0.5em)
  title
  rect(
    width: 100%,
    height: height,
  )
}

#let underlined(title, spacing: 0.5em) = {
  set par(spacing: spacing)
  text(title, )
  line(
    length: 100%,
  )
}

#let splitUnderline(title1, title2, spacing: 0.5em) = {
  set par(spacing: spacing)
  grid(
    columns: (1fr, 1fr),
    rows: auto,
    gutter: 0.5em,
    align(left, title1),
    align(right, title2),
  )
  line(
    length: 100%,
  )
}

#let statGrid() = {
  set par(spacing: 0.5em)
  "Attributes"
  line(
    length: 100%,
  )
  set par(spacing: 0.65em)
  grid(
    columns: (1fr, 1fr),
    rows: auto,
    gutter: 0.75em,
    row-gutter: 0.65em,
    underlined("Might", spacing: 2em),
    underlined("Agility", spacing: 2em),
    underlined("Insight", spacing: 2em),
    underlined("Presence", spacing: 2em),
  )
}

#grid(
  columns: (2fr, 1fr),
  rows: auto,
  gutter: 2em,
  grid(
    columns: (1fr, 1fr),
    rows: auto,
    gutter: 1em,
    row-gutter: 0.5em,
    grid.cell(
      colspan: 2,
      input("Name", height: 3em)
    ),
    input[Ancestry],
    input[Heritage]
  ),
  statGrid(),
)

#v(1em)

#let coreMemory(height: 3em) = {
  rect(
    width: 100%,
    height: height,
  )[
    
  ]
}

#let coreMemories(amount: 3, height: 3em) = {
  underlined("Core Memories")
  set par(spacing: 1em)
  let i = 0
  while i < amount {
    coreMemory(height: height)
    i += 1
  }
}

#let focusTrack(connectToMemory: false, description: false, height: 1em, dy: -0.35em, locked: false) = {
  if (connectToMemory) {
    place(
      dx: -2em,
      dy: 0.5em,
      line(
        length: 2em 
      )
    )
  }
  grid(
    columns: 5,
    rows: auto,
    gutter: 0em,
    rect(
      width: 100%,
      height: height,
      stroke: if (locked) {fadedTextColor} else {textColor},
    )[
      #if (description) {
        place(
          dy: dy,
          dx: 0.15em,
          text("corrupted", fill: gray)
        )
      }
    ],
    rect(
      width: 100%,
      height: height,
      stroke: if (locked) {fadedTextColor} else {textColor},
    )[
      #if (description) {
        place(
          dy: dy,
          dx: 0.25em,
          text("saturated", fill: gray)
        )
      }
    ],
    rect(
      width: 100%,
      height: height,
      stroke: if (locked) {fadedTextColor} else {textColor},
    )[
      #if (description) {
        place(
          dy: dy,
          dx: 1em,
          text("spent", fill: gray)
        )
      }
    ],
  )
}

#let focusTracks(rows: 9) = {
  underlined("Focus")
  set par(spacing: 0.5em)
  let row = 0
  while row < rows - 1 {
    let top = row < 9 and calc.rem(row, 3) == 0
    if (top) {
      v(0.5em)
    }
    focusTrack(connectToMemory: if (top) {true} else {false}, description: if (row == 0) {true} else {false}, height: 1em)
    row += 1
  }
  grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    rows: auto,
    gutter: 0.5em,
    focusTrack(locked: true),
    focusTrack(locked: true),
    focusTrack(locked: true),
    focusTrack(locked: true),
  )
}

#grid(
  columns: (2fr, 1fr),
  rows: auto,
  gutter: 2em,
  grid.cell(
    coreMemories(height: 4em)
  ),
  focusTracks()
)

#v(1em)

#grid(
  columns: (2fr, 1fr),
  rows: auto,
  gutter: 1em,
  column-gutter: 2em,
  splitUnderline("Physicality", "Armor Durability"),
  splitUnderline("Guard", "Grit"),
  grid(
    // stroke: black,
    columns: (3fr, 1fr),
    rows: auto,
    gutter: 1em,
    column-gutter: 1em,
    grid(
      columns: (1fr, 3fr),
      column-gutter: 0.5em,
      rect(
        width: 100%,
        height: 3.4em ,
      )[
        #align(center + top, "Speed")
      ],
      grid(
        columns: 3,
        rows: auto,
        gutter: 0em,
        rect(
          width: 100%,
          height: 3.4em,
        )[
          #align(center, "Evasion")
        ],
        rect(
          width: 100%,
          height: 3.4em,
          stroke: textColor,
        )[
          #align(center, "Heavy Hit")
        ],
        rect(
          width: 100%,
          height: 3.4em,
        )[
          #align(center, "Brutal Hit")
        ],
      ),
    ),
    grid.cell(
      stroke: none,
      grid(
        columns: 4,
        rows: auto,
        gutter: 1em,
        row-gutter: 0.75em,
        ..range(0,8).map(i => {
          rect(
            width: 1.33em,
            height: 1.33em,
            stroke: fadedTextColor
          )
        }),
      ),
    ),
  ),
  grid(
    columns: (1fr, 4fr),
    gutter: 1em,
    rect(
      width: 100%,
      height: 3.4em,
      stroke: textColor,
    ),
    grid(
      columns: 9,
      rows: auto,
      gutter: 0.5em,
      row-gutter: 0.75em,
      ..range(0,18).map(i => {
        if (i == 4 or i == 13) {
        } else {
          rect(
            width: 100%,
            height: 1.33em,
            stroke: (if (i < 9) {textColor} else {fadedTextColor})

          )
        }
      }),
    ),
  )
)


#v(1.5em)

#grid(
  columns: 3,
  rows: auto,
  gutter: 2.5em,
  column-gutter: 1em,
  grid.cell(
    colspan: 3,
    underlined("Abilities & Mutations")
  ),
  ..range(0,15).map(i => {
    line(
      length: 100%
    )
  })
)

#v(1.5em)

#let quickDrawInventory() = {
  set par(spacing: 0.5em)
  underlined("Quick Draw Inventory")
  v(2em)
  grid(
    columns: (1fr, 1fr, 1fr),
    rows: auto,
    gutter: 2.5em,
    column-gutter: 0.5em,
    ..range(0,12).map(i => {
    line(
      length: 100%,
      stroke: if (i < 9) {textColor} else {fadedTextColor}
    )
  })
  )
  grid(
    columns: (1fr, 1fr, 1fr),
    rows: auto,
    gutter: 0em,
    column-gutter: 0.5em,
    // align: center,
    fadedText[Item],
    fadedText[Tags],
    fadedText[Notes],
  )
  v(1em)
  align(center)[
    #rect(
      width: 60%,
      height: 4.56em,
    )[
      #align(bottom)[#fadedText("Pocket")]
    ]
  ]
}

#let inventory() = {
  set par(spacing: 0.5em)
  grid(
    columns: (1fr, 1fr),
    rows: auto,
    gutter: 0.5em,
    "Inventory",
    place(
      dy: -0.45em,
      rect(
        width: 100%,
        height:1.6em,
      )[
          Scrap
      ],
    )
  )
  line(
    length: 100%,
  )
  v(2em)
  grid(
    columns: 2,
    rows: auto,
    gutter: 2.5em,
    column-gutter: 0.5em,
    ..range(0,12).map(i => {
    line(
      length: 100%,
      stroke: if (i < 6) {textColor} else {fadedTextColor}
    )
  })
  )
}

#grid(
  columns: (66%, 1fr),
  rows: auto,
  gutter: 2.5em,
  column-gutter: 1em,
  quickDrawInventory(),
  inventory()
)
