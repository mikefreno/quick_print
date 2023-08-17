# quick_print

quick_print is an OCaml library that allows quick and easy pretty-printing of lists, arrays, Hashtables and more. Its main goal is to simplify data visualization during learning and debugging.

## Installation

Install quick_print with OPAM:

```bash
opam install quick_print
```

## Usage

QuickPrint.x where x = the type of data structure, currently simple lists/arrays and many hashtables are supported.
<br/>Optional (prefix) prints same line before data structure.
<br/>Optional (precision) on float data types gives decimal precision.
<br/>ex: 1.2345 with ~precision:1 -> 1.2, ~precision:2 -> 1.23 etc. defaults to 2.

```ocaml
QuickPrint.strings_list ~prefix:"string_list: "
[ "hello"; "world"; "my"; "name"; "is" ]; (* output: string_list: [hello; world; my; name; is] *)

let ht = Hashtbl.create 3 in
Hashtbl.add ht 1 [1.1234; 2.1235; 3.23456];
Hashtbl.add ht 2 [4.98765; 5.87654; 6.76543];
Hashtbl.add ht 3 [7.1; 8.01; 9.001];
quick_print.hashtable_int_float_list ~prefix:"MyHashTable: " ~precision:2 ht
(* output: MyHashTable: {(1, [1.12; 2.12; 3.23]); (2, [4.99; 5.88; 6.77]); (3, [7.10; 8.01; 9.00]); } *)
```

## Contribute

Contributions to quick_print are welcome. Feel free to submit issues and pull requests.

## License

This project is licensed under the terms of the MIT license. For more details, see the [LICENSE](/LICENSE) file.
