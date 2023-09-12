(** [strings_list ~prefix list] prints the [list] of strings to the standard output with the [prefix]. *)
let strings_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%s" item in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [string_list_list ?prefix list] prints a list of string lists to standard output.
    Each inner list is formatted as a bracketed, semicolon-separated sequence of strings (e.g., "[one; two; three]"). 
    The inner lists themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list.*)
let string_list_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  
  let pp_item_inner fmt item = Format.fprintf fmt "%s" item in
  let pp_list_inner fmt inner_list = 
    Format.fprintf fmt "[";
    Format.pp_print_list ~pp_sep pp_item_inner fmt inner_list;
    Format.fprintf fmt "]" 
  in
  
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_list_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [string_array_list ?prefix list] prints a list of string arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of strings 
    enclosed by array brackets (e.g., "[|one; two; three|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list. *)
let string_array_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in

  let pp_item_inner fmt item = Format.fprintf fmt "%s" item in
  let pp_array_inner fmt inner_array = 
    Format.fprintf fmt "[|";
    Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
    Format.fprintf fmt "|]" 
  in

  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [string_array_array ?prefix arr] prints an array of string arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of strings 
    enclosed by array brackets (e.g., "[|one; two; three|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the array. *)
let string_array_array ?(prefix = "") arr =
  let pp_sep fmt () = Format.fprintf fmt "; " in

  let pp_item_inner fmt item = Format.fprintf fmt "%s" item in
  let pp_array_inner fmt inner_array = 
    Format.fprintf fmt "[|";
    Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
    Format.fprintf fmt "|]" 
  in

  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter (Array.to_list arr);
  Format.fprintf Format.std_formatter "]\n"

(** [chars_list ~prefix list] prints the [list] of chars to the standard output with the [prefix]. *)
let chars_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%c" item in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [char_list_list ?prefix list] prints a list of char lists to standard output. 
    Each inner list is formatted as a bracketed, semicolon-separated sequence of characters (e.g., "[a; b; c]"). 
    The inner lists themselves are also separated by semicolons and spaces.
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list. *)
let char_list_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  
  let pp_item_inner fmt item = Format.fprintf fmt "%c" item in
  let pp_list_inner fmt inner_list = 
    Format.fprintf fmt "[";
    Format.pp_print_list ~pp_sep pp_item_inner fmt inner_list;
    Format.fprintf fmt "]" 
  in
  
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_list_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [char_array_list ?prefix list] prints a list of character arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of characters
    enclosed by array brackets (e.g., "[|'a'; 'b'; 'c'|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list. *)
let char_array_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in

  let pp_item_inner fmt item = Format.fprintf fmt "'%c'" item in
  let pp_array_inner fmt inner_array = 
    Format.fprintf fmt "[|";
    Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
    Format.fprintf fmt "|]" 
  in

  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

  (** [char_array_array ?prefix arr] prints an array of char arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of chars
    enclosed by array brackets (e.g., "[|a; b; c|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the array. *)
let char_array_array ?(prefix = "") arr =
  let pp_sep fmt () = Format.fprintf fmt "; " in

  let pp_item_inner fmt item = Format.fprintf fmt "%c" item in
  let pp_array_inner fmt inner_array = 
    Format.fprintf fmt "[|";
    Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
    Format.fprintf fmt "|]" 
  in

  Format.fprintf Format.std_formatter "%s[|" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter (Array.to_list arr);
  Format.fprintf Format.std_formatter "|]\n"

(** [int_list ~prefix list] prints the [list] of integers to the standard output with the [prefix]. *)
let int_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%d" item in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [int_list_list ?prefix list] prints a list of int lists to standard output. 
    Each inner list is formatted as a bracketed, semicolon-separated sequence of integers (e.g., "[1; 2; 3]"). 
    The inner lists themselves are also separated by semicolons and spaces.
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list. *)
let int_list_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  
  let pp_item_inner fmt item = Format.fprintf fmt "%d" item in
  let pp_list_inner fmt inner_list = 
    Format.fprintf fmt "[";
    Format.pp_print_list ~pp_sep pp_item_inner fmt inner_list;
    Format.fprintf fmt "]" 
  in
  
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_list_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [int_array_list ?prefix list] prints a list of integer arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of integers
    enclosed by array brackets (e.g., "[|1; 2; 3|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list. *)
let int_array_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in

  let pp_item_inner fmt item = Format.fprintf fmt "%d" item in
  let pp_array_inner fmt inner_array = 
    Format.fprintf fmt "[|";
    Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
    Format.fprintf fmt "|]" 
  in

  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"


(** [int_array_array ?prefix arr] prints an array of integer arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of integers
    enclosed by array brackets (e.g., "[|1; 2; 3|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the array. *)
let int_array_array ?(prefix = "") arr = 
  let pp_sep fmt () = Format.fprintf fmt "; " in
  
  let pp_item_inner fmt item = Format.fprintf fmt "%d" item in
  let pp_array_inner fmt inner_array = 
    Format.fprintf fmt "[|";
    Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
    Format.fprintf fmt "|]" 
  in

  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter (Array.to_list arr);
  Format.fprintf Format.std_formatter "]\n"

(** [float_list ~prefix ~precision list] prints the [list] of floats to the standard output with
   a given [precision] and with the [prefix]. *)
let float_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "@[<v 0>%.*f@]" precision item in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [float_list_list ?prefix ?precision list] prints a list of float lists to standard output.
    Each inner list is formatted as a bracketed, semicolon-separated sequence of floats (e.g., "[1.23; 4.56; 7.89]"),  
    with [precision] decimal places. 
    The inner lists themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2 if omitted) specifies the number of decimal places for the floating-point values. *)
let float_list_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item_inner fmt item = Format.fprintf fmt "%.*f" precision item in
  let pp_list_inner fmt inner_list = 
    Format.fprintf fmt "[";
    Format.pp_print_list ~pp_sep pp_item_inner fmt inner_list;
    Format.fprintf fmt "]" 
  in
  
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_list_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [float_array_list ?prefix ?precision list] prints a list of float arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of floats
    enclosed by array brackets (e.g., "[|1.00; 2.00; 3.00|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2, if omitted) determines the number of decimal places for each float. *)
let float_array_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in

  let pp_item_inner fmt item = Format.fprintf fmt "%.*f" precision item in
  let pp_array_inner fmt inner_array = 
    Format.fprintf fmt "[|";
    Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
    Format.fprintf fmt "|]" 
  in

  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [float_array_array ?prefix ?precision arr] prints an array of float arrays to standard output.
    Each inner array is formatted as a bracketed, semicolon-separated sequence of floats
    enclosed by array brackets (e.g., "[|1.00; 2.00; 3.00|]"). 
    The inner arrays themselves are also separated by semicolons and spaces. 
    The optional [prefix] argument (defaulting to an empty string, if omitted) is printed before the array.
    The optional [precision] argument specifies the number of decimal places for the floats (defaulting to 2 if omitted). *)
let float_array_array ?(prefix = "") ?(precision = 2) arr = 
  let pp_sep fmt () = Format.fprintf fmt "; " in

  let pp_item_inner fmt item = Format.fprintf fmt "@[<v 0>%.*f@]" precision item in
  let pp_array_inner fmt inner_array =
      Format.fprintf fmt "[|";
      Format.pp_print_list ~pp_sep pp_item_inner fmt (Array.to_list inner_array);
      Format.fprintf fmt "|]" 
  in
  
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_array_inner Format.std_formatter (Array.to_list arr);
  Format.fprintf Format.std_formatter "]\n"


(** [string_string_tuple_list ?prefix list] prints a list of [(string, string)] tuples to standard output.
    Each tuple is formatted as [(string1, string2)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let string_string_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%s, %s)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [string_char_tuple_list ?prefix list] prints a list of [(string, char)] tuples to standard output.
    Each tuple is formatted as [(string, c)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)  
let string_char_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%s, %c)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [string_int_tuple_list ?prefix list] prints a list of [(string, int)] tuples to standard output.
    Each tuple is formatted as [(string, n)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let string_int_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%s, %d)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [string_float_tuple_list ?prefix ?precision list] prints a list of [(string, float)] tuples to standard output.
    Each tuple is formatted as [(string, f)], where [f] has [precision] decimal places.
    Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2 if omitted) sets the number of decimal places for floats. *)
let string_float_tuple_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%s, %.*f)" a precision b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [char_string_tuple_list ?prefix list] prints a list of [(char, string)] tuples to standard output.
    Each tuple is formatted as [(c, string)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let char_string_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%c, %s)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [char_char_tuple_list ?prefix list] prints a list of [(char, char)] tuples to standard output.
    Each tuple is formatted as [(c1, c2)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let char_char_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%c, %c)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [char_int_tuple_list ?prefix list] prints a list of [(char, int)] tuples to standard output.
    Each tuple is formatted as [(c, n)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let char_int_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%c, %d)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [char_float_tuple_list ?prefix ?precision list] prints a list of [(char, float)] tuples on standard output.
    Each tuple is formatted as [(c, f.##)], where f has [precision] decimal places. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) will be printed before the list. 
    The optional [precision] argument (defaulting to 2 if omitted) sets the number of decimal places for floats. *)
let char_float_tuple_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%c, %.*f)" a precision b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [int_string_tuple_list ?prefix list] prints a list of [(int, string)] tuples to standard output.
    Each tuple is formatted as [(n, string)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let int_string_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%d, %s)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [int_char_tuple_list ?prefix list] prints a list of [(int, char)] tuples to standard output.
    Each tuple is formatted as [(n, c)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let int_char_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%d, %c)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [int_int_tuple_list ?prefix list] prints a list of [(int, int)] tuples to standard output.
    Each tuple is formatted as [(n, m)]. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list. *)
let int_int_tuple_list ?(prefix = "") list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%d, %d)" a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [int_float_tuple_list ?prefix ?precision list] prints a list of [(int, float)] tuples to standard output.
    Each tuple is formatted as [(n, f)], where [f] is a float with [precision] decimal places. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2 if omitted) sets the number of decimal places for float. *)
let int_float_tuple_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%d, %.*f)" a precision b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [float_string_tuple_list ?prefix ?precision list] prints a list of [(float, string)] tuples to standard output.
    Each tuple is formatted as [(f, string)], where [f] is a float with [precision] decimal places. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2 if omitted) sets the number of decimal places for the float. *)
let float_string_tuple_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%.*f, %s)" precision a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [float_char_tuple_list ?prefix ?precision list] prints a list of [(float, char)] tuples to standard output.
    Each tuple is formatted as [(f, c)], where [f] is a float with [precision] decimal places. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2 if omitted) sets the number of decimal places for the float. *)
let float_char_tuple_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%.*f, %c)" precision a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [float_int_tuple_list ?prefix ?precision list] prints a list of [(float, int)] tuples to standard output.
    Each tuple is formatted as [(f, n)], where [f] is a float with [precision] decimal places. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2 if omitted) sets the number of decimal places for the float. *)
let float_int_tuple_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%.*f, %d)" precision a b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [float_float_tuple_list ?prefix ?precision list] prints a list of [(float, float)] tuples to standard output.
    Each tuple is formatted as [(f1, f2)], where [f1] and [f2] are floats with [precision] decimal places. Tuples are separated by a semicolon and a space.
    The optional [prefix] argument (defaulting to an empty string if omitted) is printed before the list.
    The optional [precision] argument (defaulting to 2 if omitted) sets the number of decimal places for the floats. *)
let float_float_tuple_list ?(prefix = "") ?(precision = 2) list =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (a, b) = Format.fprintf fmt "(%.*f, %.*f)" precision a precision b in
  Format.fprintf Format.std_formatter "%s[" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list;
  Format.fprintf Format.std_formatter "]\n"

(** [strings_array ~prefix arr] converts the [arr] array to a list and prints it
    to the standard output with a given [prefix]. *)
let strings_array ?(prefix = "") arr =
  let as_list = Array.to_list arr in
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%s" item in
  Format.fprintf Format.std_formatter "%s[|" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter as_list;
  Format.fprintf Format.std_formatter "|]\n"

(** [chars_array ~prefix arr] converts the [arr] array of characters to a list and prints it
    to the standard output with a given [prefix]. *)
let chars_array ?(prefix = "") arr =
  let as_list = Array.to_list arr in
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%c" item in
  Format.fprintf Format.std_formatter "%s[|" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter as_list;
  Format.fprintf Format.std_formatter "|]\n"

(** [int_array ~prefix arr] converts the [arr] array of integers to a list and prints it
    to the standard output with a given [prefix]. *)
let int_array ?(prefix = "") arr =
  let as_list = Array.to_list arr in
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%d" item in
  Format.fprintf Format.std_formatter "%s[|" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter as_list;
  Format.fprintf Format.std_formatter "|]\n"

(** [float_array ~prefix ~precision arr] converts the [arr] array of floats to a list and prints it
    with the specified [precision] and [prefix] to the standard output. *)
let float_array ?(prefix = "") ?(precision = 2) arr =
  let as_list = Array.to_list arr in
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "@[<v 0>%.*f@]" precision item in
  Format.fprintf Format.std_formatter "%s[|" prefix;
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter as_list;
  Format.fprintf Format.std_formatter "|]\n"

(** [hashtable_int_string ~prefix ht] prints the entries of a hashtable [ht] (with integer keys and string values)
    to the standard output, using the [prefix].
    Each entry is represented as a tuple (key, value). *)
let hashtable_int_string ?(prefix = "") ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%d, %s)" k v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_int_char ~prefix ht] prints the entries of a hashtable [ht] (with integer keys and character values)
    to the standard output, using the [prefix].
    Each entry is represented as a tuple (key, value). *)
let hashtable_int_char ?(prefix = "") ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%d, %c)" k v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_int_int ~prefix ht] prints the entries of a hashtable [ht] (with integer keys and integer values)
    to the standard output, using the [prefix].
    Each entry is represented as a tuple (key, value). *)
let hashtable_int_int ?(prefix = "") ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%d, %d)" k v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_int_float ~prefix ~precision ht] prints the entries of a hashtable [ht] (with integer keys and floating point values)
    to the standard output, using the [prefix]. The floating point values are shown with the given [precision].
    Each entry is represented as a tuple (key, value). *)
let hashtable_int_float ?(prefix = "") ?(precision = 2) ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%d, %.*f)" k precision v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_string_string ~prefix ht] prints the entries of a hashtable [ht] (with string keys and string values)
    to the standard output, using the [prefix].
    Each entry is represented as a tuple (key, value). *)
let hashtable_string_string ?(prefix = "") ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%s, %s)" k v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_string_char ~prefix ht] prints the entries of a hashtable [ht] (with string keys and character values)
    to the standard output, using the [prefix].
    Each entry is represented as a tuple (key, value). *)
let hashtable_string_char ?(prefix = "") ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%s, %c)" k v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_int_int ~prefix ht] prints the entries of a hashtable [ht] (with string keys and integer values)
    to the standard output, using the [prefix].
    Each entry is represented as a tuple (key, value). *)
let hashtable_string_int ?(prefix = "") ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%s, %d)" k v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_int_float ~prefix ~precision ht] prints the entries of a hashtable [ht] (with string keys and floating point values)
    to the standard output, using the [prefix]. The floating point values are shown with the given [precision].
    Each entry is represented as a tuple (key, value). *)
let hashtable_string_float ?(prefix = "") ?(precision = 2) ht =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt (k, v) = Format.fprintf fmt "(%s, %.*f)" k precision v in
  Format.fprintf Format.std_formatter "%s{" prefix;
  Hashtbl.iter
    (fun k v ->
      Format.fprintf Format.std_formatter "%a" pp_item (k, v);
      pp_sep Format.std_formatter ())
    ht;
  Format.fprintf Format.std_formatter "}\n"

(** [hashtable_int_string_list ~prefix ht] prints the entries of a hashtable [ht] (with integer keys and list of strings)
    to the standard output, using the [prefix].
    The strings in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_int_string_list ?(prefix = "") ht =
  let str_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " list in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let str_list = str_list_to_str v in
      Printf.printf "(%d, %s); " k str_list)
    ht;
  print_endline "}"

(** [hashtable_int_char_list ~prefix ht] prints the entries from the hashtable [ht] (with integer keys and list of chars)
    to the standard output, using the [prefix].
    The characters in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_int_char_list ?(prefix = "") ht =
  let char_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " (List.map Char.escaped list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let char_list = char_list_to_str v in
      Printf.printf "(%d, %s); " k char_list)
    ht;
  print_endline "}"

(** [hashtable_int_int_list ~prefix ht] prints the entries of hashtable [ht] (with integer keys and list of integers)
    to the standard output, using the [prefix].
    The integers in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_int_int_list ?(prefix = "") ht =
  let int_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " (List.map string_of_int list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let int_list = int_list_to_str v in
      Printf.printf "(%d, %s); " k int_list)
    ht;
  print_endline "}"

(** [hashtable_int_float_list ~prefix ~precision ht] prints the entries of the hashtable [ht] (with integer keys and list of floats)
    to the standard output, using the [prefix]. Floating point numbers are formatted with the provided [precision].
    The floats in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_int_float_list ?(prefix = "") ?(precision = 2) ht =
  let float_list_to_str ?(prefix = "") ?(precision = 2) list =
    let float_to_str f = Printf.sprintf "%.*f" precision f in
    let s = prefix ^ String.concat "; " (List.map float_to_str list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let float_list = float_list_to_str ~precision v in
      Printf.printf "(%d, %s); " k float_list)
    ht;
  print_endline "}"

(** [hashtable_string_string_list ~prefix ht] prints the entries of a hashtable [ht] (with string keys and list of strings)
    to the standard output, using the [prefix].
    The strings in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_string_string_list ?(prefix = "") ht =
  let str_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " list in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let str_list = str_list_to_str v in
      Printf.printf "(%s, %s); " k str_list)
    ht;
  print_endline "}"

(** [hashtable_string_char_list ~prefix ht] prints the entries from the hashtable [ht] (with string keys and list of chars)
    to the standard output, using the [prefix].
    The characters in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_string_char_list ?(prefix = "") ht =
  let char_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " (List.map Char.escaped list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let char_list = char_list_to_str v in
      Printf.printf "(%s, %s); " k char_list)
    ht;
  print_endline "}"

(** [hashtable_string_int_list ~prefix ht] prints the entries of hashtable [ht] (with string keys and list of integers)
    to the standard output, using the [prefix].
    The integers in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_string_int_list ?(prefix = "") ht =
  let int_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " (List.map string_of_int list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let int_list = int_list_to_str v in
      Printf.printf "(%s, %s); " k int_list)
    ht;
  print_endline "}"

(** [hashtable_string_float_list ~prefix ~precision ht] prints the entries of the hashtable [ht] (with string keys and list of floats)
    to the standard output, using the [prefix]. Floating point numbers are formatted with the provided [precision].
    The floats in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_string_float_list ?(prefix = "") ?(precision = 2) ht =
  let float_list_to_str ?(prefix = "") ?(precision = 2) list =
    let float_to_str f = Printf.sprintf "%.*f" precision f in
    let s = prefix ^ String.concat "; " (List.map float_to_str list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let float_list = float_list_to_str ~precision v in
      Printf.printf "(%s, %s); " k float_list)
    ht;
  print_endline "}"

(** [hashtable_char_string_list ~prefix ht] prints the entries of a hashtable [ht] (with character keys and list of strings)
    to the standard output, using the [prefix].
    The strings in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_char_string_list ?(prefix = "") ht =
  let str_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " list in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let str_list = str_list_to_str v in
      Printf.printf "(%c, %s); " k str_list)
    ht;
  print_endline "}"

(** [hashtable_char_char_list ~prefix ht] prints the entries from the hashtable [ht] (with char keys and list of chars)
    to the standard output, using the [prefix].
    The characters in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_char_char_list ?(prefix = "") ht =
  let char_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " (List.map Char.escaped list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let char_list = char_list_to_str v in
      Printf.printf "(%c, %s); " k char_list)
    ht;
  print_endline "}"

(** [hashtable_char_int_list ~prefix ht] prints the entries of hashtable [ht] (with character keys and list of integers)
    to the standard output, using the [prefix].
    The integers in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_char_int_list ?(prefix = "") ht =
  let int_list_to_str ?(prefix = "") list =
    let s = prefix ^ String.concat "; " (List.map string_of_int list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let int_list = int_list_to_str v in
      Printf.printf "(%c, %s); " k int_list)
    ht;
  print_endline "}"

(** [hashtable_char_float_list ~prefix ~precision ht] prints the entries of the hashtable [ht] (with character keys and list of floats)
    to the standard output, using the [prefix]. Floating point numbers are formatted with the provided [precision].
    The floats in each list are joined with '; ' and enclosed in brackets []. *)
let hashtable_char_float_list ?(prefix = "") ?(precision = 2) ht =
  let float_list_to_str ?(prefix = "") ?(precision = 2) list =
    let float_to_str f = Printf.sprintf "%.*f" precision f in
    let s = prefix ^ String.concat "; " (List.map float_to_str list) in
    Printf.sprintf "[%s]" s
  in
  print_string (prefix ^ "{");
  Hashtbl.iter
    (fun k v ->
      let float_list = float_list_to_str ~precision v in
      Printf.printf "(%c, %s); " k float_list)
    ht;
  print_endline "}"

(** [tuple_strings_list_strings_list ?prefix (list1, list2)] 
    prints the tuple of string lists [(list1, list2)] to the standard output. Each string from the lists is separated by a semicolon and a space "; ".
    The tuple is presented in this string format: "([list1], [list2])". *)
let tuple_strings_list_strings_list ?(prefix = "") (list1, list2) =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%s" item in
  Format.fprintf Format.std_formatter "%s(" prefix;
  Format.fprintf Format.std_formatter "[";
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list1;
  Format.fprintf Format.std_formatter "], [";
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list2;
  Format.fprintf Format.std_formatter "]";
  Format.fprintf Format.std_formatter ")\n"


(** [tuple_chars_list_chars_list ?prefix (list1, list2)]
    prints optional [prefix] and the tuple of character lists [(list1, list2)] to the standard output, with each character separated by a semicolon and a space "; ".
    The tuple is presented in this string format: "([list1], [list2])". *)
let tuple_chars_list_chars_list ?(prefix = "") (list1, list2) =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "'%c'" item in
  Format.fprintf Format.std_formatter "%s(" prefix;
  Format.fprintf Format.std_formatter "[";
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list1;
  Format.fprintf Format.std_formatter "], [";
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list2;
  Format.fprintf Format.std_formatter "]";
  Format.fprintf Format.std_formatter ")\n"

(** [tuple_ints_list_ints_list ?prefix (list1, list2)]
    prints optional [prefix] and the tuple of integer lists [(list1, list2)] to the standard output, with each integer separated by a semicolon and a space "; ".
    The tuple is presented in this string format: "([list1], [list2])". *)
let tuple_ints_list_ints_list ?(prefix = "") (list1, list2) =
  let pp_sep fmt () = Format.fprintf fmt "; " in
  let pp_item fmt item = Format.fprintf fmt "%d" item in
  Format.fprintf Format.std_formatter "%s(" prefix;
  Format.fprintf Format.std_formatter "[";
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list1;
  Format.fprintf Format.std_formatter "], [";
  Format.pp_print_list ~pp_sep pp_item Format.std_formatter list2;
  Format.fprintf Format.std_formatter "]";
  Format.fprintf Format.std_formatter ")\n"

(** [tuple_floats_list_floats_list ?prefix ?precision (list1, list2)]
    prints the optional [prefix] and the tuple of float lists [(list1, list2)] as a formatted string with each number separated by a semicolon and a space "; ". 
    The [precision] parameter defines how many decimal places each float should have, defaulting to 2.
    The tuple is presented in this string format: "([list1], [list2])". *)
let tuple_floats_list_floats_list ?(prefix = "") ?(precision = 2) (list1, list2) =
  let float_list_to_str list =
    let float_to_str f = Printf.sprintf "%.*f" precision f in
    let s = "[" ^ String.concat "; " (List.map float_to_str list) ^ "]" in
    s
  in
  let float_list1 = float_list_to_str list1 in
  let float_list2 = float_list_to_str list2 in
  Printf.printf "%s(%s, %s)\n" prefix float_list1 float_list2
