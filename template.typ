// #import "@preview/fontawesome:0.5.0": *

// The resume function defines how your document looks.
// It takes your content and some metadata and formats it.
#let resume(author: (:), body) = {
  // Set the document's basic properties.
  set document(author: author.name, title: author.name)
  set page("a4", margin: 0.25in)
  set text(font: "Calibri", lang: "en")
  show link: content => [#text(fill: rgb(0, 0, 255), weight: "regular", content)]

  // Title row.
  align(center, block(text(weight: "bold", top-edge: "cap-height", 20pt, author.name)))

  // Author information.
  align(center)[
    #author.info.join([#sym.circle.filled])
  ]

  // Main Body.
  set par(justify: true)

  body
}


#let phone(id) = link("tel:" + id)[
  #id
]

#let mail(id) = link("mailto:" + id)[
  #id
]

#let linkedin(id) = link("https://" + id + "/")[
  #id
]

#let github(id) = link("https://" + id)[
  #id
]

#let website(id) = link(id)[
  #id
]

// Helper functions for grid.
#let resumegrid(headings, content, padcontent) = [
  #grid(columns: (1fr, auto), gutter: 8pt, ..headings)
  #v(0.75em, weak: true)
  #if padcontent [#pad(left: 1em, content)] else [#content]
]

// Helper functions for experience section.
#let experience(company, daterange, role, location: [], info) = {
  resumegrid(
    (
      text(size: 14pt, weight: "bold", align(left, company)),
      text(size: 12pt, weight: "regular", align(right, daterange)),
      text(size: 12pt, weight: "regular", align(left, role)),
      text(size: 12pt, weight: "regular", align(right, location)),
    ),
    info,
    true,
  )
}

// Helper functions for experience section.
#let education(institute, daterange, degree, gpa, info) = {
  resumegrid(
    (
      text(size: 14pt, weight: "bold", align(left, institute)),
      text(size: 12pt, weight: "regular", align(right, daterange)),
      text(size: 12pt, weight: "regular", align(left, degree)),
      text(size: 12pt, weight: "regular", align(right, gpa)),
    ),
    info,
    false,
  )
}

// Helper functions for projects section.
#let project(name, sourceCode, info) = {
  resumegrid(
    (
      text(size: 14pt, weight: "bold", name),
      text(size: 12pt, weight: "regular", ""),
      text(size: 12pt, weight: "regular", sourceCode),
    ),
    info,
    true,
  )
}

// Helper functions for indenting.
#let indent(ispadded, content) = [
  #if ispadded [#pad(left: 1em, content)] else [#content]
]

#let skills(ispadded, content) = {
  indent(ispadded, [#text(font: "Calibri", content)])
}

#let certificates(ispadded, content) = {
  indent(ispadded, [#text(font: "Calibri", content)])
}

#let header(content, color: rgb(207, 226, 243), padding: 0.5em) = {
  box(fill: color, inset: padding, width: 33%, [#text(font: "Calibri", size: 18pt, content)])
}
