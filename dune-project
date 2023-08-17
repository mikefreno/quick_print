(lang dune 3.10)

(name quick_print)

(generate_opam_files true)

(source
 (github mikefreno/quick_print))

(authors "Michael Freno")

(maintainers "Michael Freno")

(license MIT)

(documentation https://mikefreno.github.io/quick_print/)

(package
 (name quick_print)
 (synopsis "Quick and easy printing for lists, arrays, etc")
 (description "Allows quick printing for lists, arrays, Hashtables etc. Useful for learning/ quick debugging")
 (depends ocaml dune)
 (tags
  (printing, arrays, lists)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
