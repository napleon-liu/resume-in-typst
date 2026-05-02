// 图标
#let icon(path, size: 0.78em) = box(
  baseline: 0.1em,
  height: size,
  width: size,
  align(center, image(path, width: size, height: size)),
)

#let faAngleRight = icon("static/icons/angle-right.svg", size: 0.68em)

#let time-col = 15%
#let col-gap = 1.1em
#let body-leading = 0.6em
#let text-gap = 0.6em
#let item-gap = 1em
#let muted = rgb(64, 64, 64)

// 个人信息
#let info(
  color: black,
  name: "",
  phone: "",
  email: "",
  location: "",
  photograph: "",
  github: "",
  target_role: "",
  target_city: "",
  language: "zh",
) = {
  set text(fill: color)
  let base-label = if language == "en" { "Base: " } else { "base地: " }
  let target-city-label = if language == "en" { "Target City: " } else { "意向城市：" }
  let target-role-label = if language == "en" { "Target Role: " } else { "求职方向:" }

  if photograph == "" [
    #grid(
      columns: (auto, 1fr),
      column-gutter: 1.1em,
      align: (left, horizon),
      text(fill: color, size: 1.62em, weight: "bold", name),
      stack(
        dir: ttb,
        spacing: 0.24em,
        text(size: 0.82em)[
          #icon("static/icons/phone.svg") #h(0.18em) #phone
          #h(0.56em) | #h(0.56em)
          #icon("static/icons/envelope.svg") #h(0.18em) #email
          #h(0.56em) | #h(0.56em)
          #icon("static/icons/github.svg") #h(0.18em) #github
        ],
        text(size: 0.82em)[#base-label#location | #target-city-label#target_city | #target-role-label#target_role],
      ),
    )
  ] else [
    #grid(
      columns: (1fr, auto),
      column-gutter: 1.2em,
      align: (left, center),
      stack(
        dir: ttb,
        spacing: 0.16em,
        text(fill: color, size: 1.58em, weight: "bold", name),
        text(size: 0.82em)[
          #icon("static/icons/phone.svg") #h(0.18em) #phone
          #h(0.48em) | #h(0.48em)
          #icon("static/icons/envelope.svg") #h(0.18em) #email
        ],
        text(size: 0.82em)[#icon("static/icons/github.svg") #h(0.18em) #github],
        text(size: 0.82em)[#location #h(0.7em) | #h(0.7em) #target-city-label#target_city],
        text(size: 0.82em)[#target-role-label#target_role],
      ),
      box(
        align(center + horizon, photograph),
      ),
    )
  ]
}

// 主体
#let resume(
  size: 10pt,
  themeColor: black,
  photograph: "",
  logo: "",
  language: "zh",
  infos,
  body,
) = {
  // 页边距设定
  set page(margin: (
    top: 1.0cm,
    bottom: 1.0cm,
    left: 1.45cm,
    right: 1.45cm,
  ))

  // 基础字体设定
  set text(
    size: size,
    lang: language,
    font: if language == "en" { ("Times New Roman", "Songti SC") } else { ("Songti SC", "Times New Roman") },
  )
  set par(spacing: text-gap)

  // 标题
  show heading: set text(
    fill: themeColor,
    size: 1.06em,
    weight: "semibold",
  )

  show heading: set block(
    above: 0.82em,
    below: 0.5em,
    stroke: (bottom: 0.36pt + themeColor),
    outset: (bottom: 2pt),
    width: 100%,
  )

  // 列表样式
  set list(
    indent: 1em,
    body-indent: 0.22em,
    marker: faAngleRight,
  )

  set enum(
    indent: 1.05em,
    body-indent: 0.38em,
  )

  // 主体设定
  set par(justify: false, leading: body-leading)

  // 首部
  if logo == "" [
    #infos
  ] else [
    #grid(
      columns: (auto, 1fr),
      gutter: 0.8em,
      align: (left, center),
      logo,
      infos,
    )
  ]

  v(0.68em)
  body
}

#let sidebar(..contents) = grid(
  columns: (auto, auto),
  gutter: 1em,
  ..contents,
)

// 颜色变灰
#let graytext = text.with(
  fill: rgb(48, 48, 48),
  size: 0.92em,
)

// 获奖
#let award(
  time,
  name,
  level,
) = {
  block(
    above: 0.2em,
    below: 0.32em,
    grid(
      columns: (time-col, 1fr),
      row-gutter: 0.14em,
      column-gutter: col-gap,
      text(fill: black, size: 0.88em, strong(time)),
      grid(
        columns: (1fr, auto),
        column-gutter: 0.8em,
        text(fill: black, size: 0.94em, strong(name)),
        align(right)[#text(fill: muted, size: 0.86em, level)],
      ),
    ),
  )
}

#let item(
  time,
  name,
  role,
) = {
  block(
    above: item-gap,
    below: 0.7em,
    grid(
      columns: (time-col, 1fr),
      row-gutter: 0.14em,
      column-gutter: col-gap,
      text(fill: black, size: 0.88em, strong(time)),
      grid(
        columns: (1fr, auto),
        column-gutter: 0.8em,
        text(fill: black, size: 0.94em, strong(name)),
        align(right)[#text(fill: black, size: 0.86em, weight: "semibold", role)],
      ),
    ),
  )
}

#let research(
  time,
  title,
  meta,
) = {
  block(
    above: item-gap,
    below: 0.7em,
    grid(
      columns: (time-col, 1fr),
      row-gutter: 0.14em,
      column-gutter: col-gap,
      text(fill: black, size: 0.88em, strong(time)),
      grid(
        columns: (1fr, auto),
        column-gutter: 0.8em,
        text(fill: black, size: 0.94em, strong(title)),
        align(right)[#text(fill: black, size: 0.86em, weight: "semibold", meta)],
      ),
    ),
  )
}

// 教育背景
#let education(
  time,
  university,
  major,
  degree,
) = {
  block(
    above: 0.1em,
    below: text-gap,
    grid(
      columns: (time-col, 1fr, 16%, 8%),
      row-gutter: 0.14em,
      column-gutter: col-gap,
      text(fill: black, size: 0.88em, strong(time)),
      text(fill: black, size: 0.94em, strong(university)),
      text(fill: black, size: 0.9em, major),
      align(right)[#text(fill: black, size: 0.86em, weight: "semibold", degree)],
    ),
  )
}
