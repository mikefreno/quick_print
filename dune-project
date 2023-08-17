(lang dune 3.10)

(name QuickPrint)

(generate_opam_files true)

(source
 (github MikeFreno/QuickPrint))

(authors "Michael Freno")

(maintainers "Michael Freno")

(license MIT)

(documentation https://url/to/documentation)

(package
 (name QuickPrint)
 (synopsis "Quick printing for lists, arrays, etc")
 (description "Allows quick printing for lists, arrays, Hashtables etc. Useful for learning/ quick debugging")
 (depends ocaml dune fmt)
 (tags
  (printing, arrays, lists)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
