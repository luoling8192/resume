#import "@preview/fontawesome:0.5.0": *

// Colors
#let primary-color = rgb("#000066")  // basecolor from resume.cls
#let accent-color = rgb("#989898")   // darkGrey from resume.cls
#let text-color = rgb("#000000")     // black for text
#let light-color = rgb("#f6f8fa")    // keeping original light color
#let date-color = rgb("#6a737d")     // keeping original date color
#let tag-color = primary-color.lighten(80%)  // For tags background

// Font sizes
#let h1-size = 1.8em      // \Large from resume.cls
#let h2-size = 1.4em      // \large from resume.cls 
#let h3-size = 1.2em      // \normalsize from resume.cls
#let p-size = 1em         // \normalsize from resume.cls
#let small-size = 0.9em   // \footnotesize from resume.cls

// Spacing
#let spacing-xs = 0.2em   // matches resume.cls spacing
#let spacing-sm = 0.5em   // matches resume.cls spacing
#let spacing-md = 1em     // matches resume.cls spacing
#let spacing-lg = 1.5em   // matches resume.cls margin
#let spacing-xl = 2em     // matches resume.cls spacing

// Leading
#let leading-tight = 1.25em  // linespread{1.25} from resume.cls

// Margins
#let margin-page = 1.5cm     // margin=1.5cm from resume.cls
#let margin-bottom-header = 0.5em  // matches resume.cls spacing

// Column widths
#let left-col-width = 6em    // \leftcolwidth for zh from resume.cls
#let right-col-width = auto  // auto-calculated in Typst

// Create a tag similar to resume.cls
#let tag(content) = {
  box(
    fill: tag-color,
    stroke: (paint: primary-color.lighten(40%), thickness: 0.5pt),
    radius: 3pt,
    inset: (x: 0.8em, y: 0.5em),
    outset: (y: 0.4em),
    content
  )
}

// Create tags with tag icon
#let tags(items) = {
  [#fa-tags() ]
  for item in items [#tag(item) #h(0.1em)]
}

// Separator
#let separator(space) = {
  v(space - 1em)
}

// Main resume function
#let resume(body) = {
  set document(title: "Resume", author: "RainbowBird")
  set page(
    paper: "a4",
    margin: (x: margin-page, y: margin-page),
    fill: white,
  )
  set text(font: ("Noto Serif CJK SC", "IBM Plex Serif"), lang: "zh", size: p-size, fill: text-color)
  set par(justify: true, leading: leading-tight)
  
  // Header
  block(width: 100%, inset: (bottom: margin-bottom-header))[
    #text(h2-size, weight: "bold", fill: primary-color)[洛灵 RainbowBird]
    #v(spacing-xs)
    #text(h3-size, fill: accent-color)[Go 开发工程师 | 全栈开发工程师]
    #grid(
      columns: (auto, auto),
      gutter: spacing-lg,
      align(left)[
        #link("mailto:rbxin2003@outlook.com")[#text(fill: primary-color)[#fa-at() rbxin2003\@outlook.com]]
      ],
      align(left)[
        #link("https://github.com/luoling8192")[#text(fill: primary-color)[#fa-github() github.com/luoling8192]]
      ],
    )
    #grid(
      columns: (auto, auto, auto),
      gutter: spacing-lg,
      align(left)[
        #text(fill: accent-color)[#fa-map-marker() 远程]
      ],
      align(left)[
        #text(fill: accent-color)[#fa-birthday-cake() 2003-11]
      ],
      align(left)[
        #text(fill: accent-color)[#fa-weixin() \@luoling8192]
      ]
    )
  ]
  
  // Horizontal rule after header (like \titlerule in resume.cls)
  line(length: 100%, stroke: 0.5pt + primary-color)
  
  // Content sections
  body
}

// Section heading
#let section(title, icon) = {
  v(spacing-xl)
  block(width: 100%)[
    #text(h1-size, weight: "bold", fill: primary-color)[#icon() #h(spacing-xs) #title]
  ]
  line(length: 100%, stroke: 0.5pt + primary-color)
  v(spacing-sm)
}

// Subsection heading
#let subsection(title, date) = {
  grid(
    columns: (1fr, auto),
    align(left)[
      #text(h3-size, weight: "bold")[#title]
    ],
    align(right)[
      #text(style: "italic", fill: date-color)[#date]
    ]
  )
  v(spacing-sm)
}

// Introduction section with bullet points
#let introduction(points) = {
  for point in points {
    block(width: 100%, inset: (left: 1em))[
      #box(width: 1em, align(center)[#fa-angle-right()]) #point
    ]
    v(0.3em)
  }
}

// Skills section
#let skills(groups) = {
  grid(
    columns: (1fr),
    gutter: spacing-md,
    align(left)[#text(weight: "bold", fill: primary-color)[后端开发]: Go (1.20+), 微服务架构, gRPC / REST API, 分布式系统设计],
    align(left)[#text(weight: "bold", fill: primary-color)[技术栈]: Echo · Fx · Ent, Kafka · Redis, PostgreSQL, TypeScript · Python],
    align(left)[#text(weight: "bold", fill: primary-color)[云原生]: Kubernetes, Docker, AWS, CI/CD],
    align(left)[#text(weight: "bold", fill: primary-color)[可观测性]: Prometheus, Grafana, OpenTelemetry, ELK],
    align(left)[#text(weight: "bold", fill: primary-color)[全栈开发]: Vue3 / React, Vite · Pinia, Serverless, Monorepo]
  )
}

// Education entry
#let education(start-date, end-date, school, department, major, degree) = {
  grid(
    columns: (left-col-width, right-col-width),
    column-gutter: 1em,
    row-gutter: 0.2em,
    align(right)[#if end-date != none [#end-date] else [现在]],
    align(left)[#text(weight: "bold")[#school] #text[· #department]],
    align(right)[#start-date],
    align(left)[#text[#major · #degree]]
  )
}

// Job experience
#let job(title, company, location, period, content) = {
  block[
    #grid(
      columns: (1fr, auto),
      align(left)[
        #text(h2-size, weight: "bold")[#title]
        #h(spacing-md)
        #text(style: "italic")[#company]
        #if location != none [
          #h(spacing-sm)
          #text(fill: accent-color, size: p-size)[#location]
        ]
      ],
      align(right)[
        #text(style: "italic", fill: date-color)[#period]
      ]
    )
  ]
  v(spacing-sm)
  content
  v(spacing-md)
}

// Experience entry with bullet points
#let experience-entry(points) = {
  for point in points {
    block(width: 100%, inset: (left: 1em))[
      #box(width: 1em, align(center)[#fa-minus()]) #point
    ]
    v(0.2em)
  }
}

// Project experience
#let project(name, role, url, period, tech, content) = {
  block[
    #grid(
      columns: (1fr, auto),
      align(left)[
        #text(h3-size, weight: "bold")[#name] 
        #h(spacing-sm)
        #text(style: "italic", size: p-size, fill: accent-color)[#role]
        #if url != none [
          #h(spacing-sm)
          #link(url)[#text(fill: primary-color, size: p-size)[#fa-link()]]
        ]
      ],
      align(right)[
        #text(style: "italic", fill: date-color)[#period]
      ]
    )
    
    #if tech != none [
      #text(size: p-size, fill: accent-color, style: "italic")[#tech]
      #v(spacing-xs)
    ]
  ]
  
  v(spacing-xs)
  content
  v(spacing-md)
}

// Open source project
#let opensource(name, role, stars, url, period, tech, content) = {
  block[
    #grid(
      columns: (1fr, auto),
      align(left)[
        #text(h3-size, weight: "bold")[#name] 
        #h(spacing-sm)
        #text(style: "italic", size: p-size, fill: accent-color)[#role] 
        #if stars != none [
          #h(spacing-sm)
          #text(fill: accent-color, size: p-size)[#fa-star() #stars]
        ]
        #if url != none [
          #h(spacing-sm)
          #link(url)[#text(fill: primary-color, size: p-size)[#fa-link()]]
        ]
      ],
      align(right)[
        #text(style: "italic", fill: date-color)[#period]
      ]
    )
    
    #if tech != none [
      #text(size: p-size, fill: accent-color, style: "italic")[#tech]
      #v(spacing-xs)
    ]
  ]
  
  v(spacing-xs)
  content
  v(spacing-md)
}

// Two-column section similar to twocolumnsection in resume.cls
#let two-column-section(left, right) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: spacing-xl,
    left,
    right
  )
}
