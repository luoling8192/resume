#import "@preview/fontawesome:0.5.0": *

#let primary-color = rgb("#0366d6")
#let accent-color = rgb("#586069")
#let text-color = rgb("#24292e")
#let light-color = rgb("#f6f8fa")
#let date-color = rgb("#6a737d")

#let resume(body) = {
  set document(title: "Resume", author: "RainbowBird")
  set page(
    paper: "a4",
    margin: (x: 1.5cm, y: 1.5cm),
    fill: white,
  )
  set text(font: ("Noto Serif CJK SC", "IBM Plex Serif"), lang: "zh", size: 10pt, fill: text-color)
  set par(justify: true, leading: 0.65em)
  
  // Header
  block(width: 100%, inset: (bottom: 0.5em))[
    #text(24pt, weight: "bold", fill: primary-color)[洛灵 RainbowBird]
    #v(6pt)
    #text(11pt, fill: accent-color)[Go 开发工程师 | 全栈开发工程师]
    #v(8pt)
    #grid(
      columns: (auto, auto),
      gutter: 1.5em,
      align(left)[
        #link("mailto:rbxin2003@outlook.com")[#text(fill: primary-color)[#fa-at() rbxin2003\@outlook.com]]
      ],
      align(left)[
        #link("https://github.com/luoling8192")[#text(fill: primary-color)[#fa-github() github.com/luoling8192]]
      ],
    )
    #v(4pt)
    #grid(
      columns: (auto, auto, auto),
      gutter: 1.5em,
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
  
  // Content sections
  body
}

#let section(title, icon) = {
  v(6pt)
  block(width: 100%)[
    #text(14pt, weight: "bold", fill: primary-color)[#icon() #h(0.3em) #title]
    #v(4pt)
    #line(length: 100%, stroke: (thickness: 0.8pt, paint: accent-color, dash: "solid"))
  ]
  v(8pt)
}

#let subsection(title, date) = {
  grid(
    columns: (1fr, auto),
    align(left)[
      #text(12pt, weight: "bold")[#title]
    ],
    align(right)[
      #text(style: "italic", fill: date-color)[#date]
    ]
  )
  v(5pt)
}

#let skills(groups) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 16pt,
    align(left)[#text(weight: "bold", fill: primary-color)[后端开发]: Go (1.20+), 微服务架构, gRPC / REST API, 分布式系统设计],
    align(left)[#text(weight: "bold", fill: primary-color)[技术栈]: Echo · Fx · Ent, Kafka · Redis, PostgreSQL, TypeScript · Python],
    align(left)[#text(weight: "bold", fill: primary-color)[云原生]: Kubernetes, Docker, AWS, CI/CD],
    align(left)[#text(weight: "bold", fill: primary-color)[可观测性]: Prometheus, Grafana, OpenTelemetry, ELK],
    align(left)[#text(weight: "bold", fill: primary-color)[全栈开发]: Vue3 / React, Vite · Pinia, Serverless, Monorepo]
  )
}

#let job(title, company, location, period, content) = {
  block[
    #grid(
      columns: (auto, 1fr, auto),
      align(left)[
        #text(12pt, weight: "bold")[#title]
      ],
      align(center)[
        #text(style: "italic")[在 #company 工作]
        #if location != none [
          #h(0.5em)
          #text(fill: accent-color, size: 9pt)[#location]
        ]
      ],
      align(right)[
        #text(style: "italic", fill: date-color)[#period]
      ]
    )
  ]
  v(5pt)
  content
  v(10pt)
}

#let project(name, role, url, period, tech, content) = {
  block[
    #grid(
      columns: (1fr, auto),
      align(left)[
        #text(12pt, weight: "bold")[#name] 
        #h(0.5em) 
        #text(style: "italic", size: 9pt, fill: accent-color)[#role]
        #if url != none [
          #h(0.5em)
          #link(url)[#text(fill: primary-color, size: 9pt)[#fa-link()]]
        ]
      ],
      align(right)[
        #text(style: "italic", fill: date-color)[#period]
      ]
    )
    
    #if tech != none [
      #text(size: 9pt, fill: accent-color, style: "italic")[#tech]
      #v(3pt)
    ]
  ]
  
  v(3pt)
  content
  v(10pt)
}

#let opensource(name, role, stars, url, period, tech, content) = {
  block[
    #grid(
      columns: (1fr, auto),
      align(left)[
        #text(12pt, weight: "bold")[#name] 
        #h(0.5em) 
        #text(style: "italic", size: 9pt, fill: accent-color)[#role] 
        #if stars != none [
          #h(0.5em)
          #text(fill: accent-color, size: 9pt)[#fa-star() #stars]
        ]
        #if url != none [
          #h(0.5em)
          #link(url)[#text(fill: primary-color, size: 9pt)[#fa-link()]]
        ]
      ],
      align(right)[
        #text(style: "italic", fill: date-color)[#period]
      ]
    )
    
    #if tech != none [
      #text(size: 9pt, fill: accent-color, style: "italic")[#tech]
      #v(3pt)
    ]
  ]
  
  v(3pt)
  content
  v(10pt)
}
