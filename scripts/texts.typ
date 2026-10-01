#import "./glossary.typ": term, glossary_types

#let parse_conditions(conditions) = {
  for condition in conditions.values() {
    condition.name + ": " + condition.description
    linebreak()
    linebreak()
  }
}