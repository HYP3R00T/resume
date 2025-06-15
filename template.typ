// #import "@preview/fontawesome:0.5.0": *

// The resume function defines how your document looks.
// It takes your content and some metadata and formats it.
#let resume(author: (:), body) = {
  // Set the document's basic properties.
  set document(author: author.name, title: author.name)
  set page("a4", margin: 5%)
  set text(font: "Arial", lang: "en")
  show link: content => [#text(fill: rgb(0, 90, 125), weight: "medium", content)]

  // Title row.
  align(center, block(text(weight: "medium", 2.5em, author.name)))

  // Author information.
  align(center)[
    #author.info.join([#sym.space.thin #sym.dot #sym.space.thin])
  ]

  // Heading.
  show heading.where(level: 1): content => [
    #upper(text(size: 0.8em, weight: "medium", content))
    #line(start: (0em, -1em), length: 100%)
    #v(-1%, weak: true)
  ]

  // Bold.
  show strong: content => [#text(weight: "light", content)]

  // Main Body.
  set par(justify: true)

  body
}

// Helper functions for author info.
#let infobox(icon, name) = box[
  #box(icon) #sym.space.thin #name
]

#let phone(id) = link("tel:" + id)[
  #infobox([󰏲], id)
]

#let mail(id) = link("mailto:" + id)[
  #infobox([], id)
]

#let linkedin(id) = link("https://linkedin.com/in/" + id + "/")[
  #infobox([󰌻], id)
]

#let github(id) = link("https://github.com/" + id)[
  #infobox([], id)
]

#let website(id) = link(id)[
  #infobox([], id.trim(regex("https?://")))
]

// Helper functions for grid.
#let resumegrid(headings, content, padcontent) = pad(left: 1em)[
  #grid(columns: (1fr, auto), gutter: 1%, ..headings)
  #v(0.75em, weak: true)
  #if padcontent [#pad(left: 1em, content)] else [#content]
]

// Helper functions for experience section.
#let education(institute, daterange, degree, gpa, info) = {
  resumegrid(
    (
      text(size: 12pt, weight: "medium", institute),
      align(right, daterange),
      degree,
      align(right, gpa),
    ),
    info,
    false,
  )
}

// Helper functions for experience section.
#let experience(company, daterange, role, location, info) = {
  resumegrid(
    (
      text(size: 12pt, weight: "medium", company),
      align(right, daterange),
      emph(role),
      align(right, emph(location)),
    ),
    info,
    true,
  )
}

// Helper functions for projects section.
#let project(name, technologies, daterange, info) = {
  resumegrid(
    (
      [#text(size: 12pt, weight: "medium", name) #sym.space #sym.dot #sym.space #emph(technologies)],
      align(right, daterange),
    ),
    info,
    true,
  )
}

// Helper functions for indenting.
#let indent(..s) = pad(left: 1em)[
  #s.pos().join("\n")
]

#let skills(..s) = indent(..s)
#let publications(..s) = indent(..s)

// Define Font Awesome fonts
#let fontawesome_brands = "fonts/Font Awesome 6 Brands-Regular-400.otf"
#let fontawesome_regular = "fonts/Font Awesome 6 Free-Regular-400.otf"
#let fontawesome_solid = "fonts/Font Awesome 6 Free-Solid-900.otf"

// Example usage of Font Awesome fonts (if needed)
// You can set these fonts for specific sections or globally as required.
// For example:
// set text(font: fontawesome_brands)
