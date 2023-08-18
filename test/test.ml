let create_int_str_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 "value1";
  Hashtbl.add ht 2 "value2";
  Hashtbl.add ht 3 "value3";
  Hashtbl.add ht 4 "value4";
  Hashtbl.add ht 5 "value5";
  ht
in

let create_int_char_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 'h';
  Hashtbl.add ht 2 'e';
  Hashtbl.add ht 3 'l';
  Hashtbl.add ht 4 'l';
  Hashtbl.add ht 5 'o';
  ht
in

let create_int_int_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 1;
  Hashtbl.add ht 2 2;
  Hashtbl.add ht 3 3;
  Hashtbl.add ht 4 4;
  Hashtbl.add ht 5 5;
  ht
in
let create_int_float_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 1.23456;
  Hashtbl.add ht 2 2.12345;
  Hashtbl.add ht 3 3.125;
  Hashtbl.add ht 4 4.567913;
  Hashtbl.add ht 5 5.4;
  ht
in

let create_str_str_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" "value1";
  Hashtbl.add ht "2" "value2";
  Hashtbl.add ht "3" "value3";
  Hashtbl.add ht "4" "value4";
  Hashtbl.add ht "5" "value5";
  ht
in

let create_str_char_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" 'h';
  Hashtbl.add ht "2" 'e';
  Hashtbl.add ht "3" 'l';
  Hashtbl.add ht "4" 'l';
  Hashtbl.add ht "5" 'o';
  ht
in

let create_str_int_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" 1;
  Hashtbl.add ht "2" 2;
  Hashtbl.add ht "3" 3;
  Hashtbl.add ht "4" 4;
  Hashtbl.add ht "5" 5;
  ht
in

let create_str_float_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" 1.23456;
  Hashtbl.add ht "2" 2.12345;
  Hashtbl.add ht "3" 3.125;
  Hashtbl.add ht "4" 4.567913;
  Hashtbl.add ht "5" 5.4;
  ht
in

let create_int_str_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 [ "hello"; "world"; "my"; "name"; "is" ];
  Hashtbl.add ht 2 [ "uhm"; "world"; "is"; "name"; "pop" ];
  Hashtbl.add ht 3 [ "one"; "two"; "three"; "four"; "five" ];
  Hashtbl.add ht 4 [ "exe"; "to"; "the"; "world"; "is" ];
  Hashtbl.add ht 5 [ "throw"; "the"; "my"; "name"; "is" ];
  ht
in

let create_int_char_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 [ 'h'; 'e'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht 2 [ 'h'; 'i'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht 3 [ 'h'; 'o'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht 4 [ 'h'; 'u'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht 5 [ 'h'; 'y'; 'l'; 'l'; 'o' ];
  ht
in

let create_int_int_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 [ 1; 2; 3; 4; 5 ];
  Hashtbl.add ht 2 [ 2; 3; 4; 5; 6 ];
  Hashtbl.add ht 3 [ 3; 4; 5; 6; 7 ];
  Hashtbl.add ht 4 [ 4; 5; 6; 7; 8 ];
  Hashtbl.add ht 5 [ 5; 6; 7; 8; 9 ];
  ht
in
let create_int_float_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht 1 [ 1.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht 2 [ 2.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht 3 [ 3.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht 4 [ 4.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht 5 [ 5.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  ht
in

let create_str_str_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" [ "hello"; "world"; "my"; "name"; "is" ];
  Hashtbl.add ht "2" [ "uhm"; "world"; "is"; "name"; "pop" ];
  Hashtbl.add ht "3" [ "one"; "two"; "three"; "four"; "five" ];
  Hashtbl.add ht "4" [ "exe"; "to"; "the"; "world"; "is" ];
  Hashtbl.add ht "5" [ "throw"; "the"; "my"; "name"; "is" ];
  ht
in

let create_str_char_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" [ 'h'; 'e'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht "2" [ 'h'; 'i'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht "3" [ 'h'; 'o'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht "4" [ 'h'; 'u'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht "5" [ 'h'; 'y'; 'l'; 'l'; 'o' ];
  ht
in

let create_str_int_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" [ 1; 2; 3; 4; 5 ];
  Hashtbl.add ht "2" [ 2; 3; 4; 5; 6 ];
  Hashtbl.add ht "3" [ 3; 4; 5; 6; 7 ];
  Hashtbl.add ht "4" [ 4; 5; 6; 7; 8 ];
  Hashtbl.add ht "5" [ 5; 6; 7; 8; 9 ];
  ht
in

let create_str_float_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht "1" [ 1.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht "2" [ 2.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht "3" [ 3.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht "4" [ 4.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht "5" [ 5.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  ht
in

let create_char_str_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht '1' [ "hello"; "world"; "my"; "name"; "is" ];
  Hashtbl.add ht '2' [ "uhm"; "world"; "is"; "name"; "pop" ];
  Hashtbl.add ht '3' [ "one"; "two"; "three"; "four"; "five" ];
  Hashtbl.add ht '4' [ "exe"; "to"; "the"; "world"; "is" ];
  Hashtbl.add ht '5' [ "throw"; "the"; "my"; "name"; "is" ];
  ht
in

let create_char_char_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht '1' [ 'h'; 'e'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht '2' [ 'h'; 'i'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht '3' [ 'h'; 'o'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht '4' [ 'h'; 'u'; 'l'; 'l'; 'o' ];
  Hashtbl.add ht '5' [ 'h'; 'y'; 'l'; 'l'; 'o' ];
  ht
in

let create_char_int_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht '1' [ 1; 2; 3; 4; 5 ];
  Hashtbl.add ht '2' [ 2; 3; 4; 5; 6 ];
  Hashtbl.add ht '3' [ 3; 4; 5; 6; 7 ];
  Hashtbl.add ht '4' [ 4; 5; 6; 7; 8 ];
  Hashtbl.add ht '5' [ 5; 6; 7; 8; 9 ];
  ht
in

let create_char_float_list_ht () =
  let ht = Hashtbl.create 10 in
  Hashtbl.add ht '1' [ 1.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht '2' [ 2.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht '3' [ 3.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht '4' [ 4.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  Hashtbl.add ht '5' [ 5.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  ht
in

(*strings*)
Quick_print.strings_list ~prefix:"string_list: "
  [ "hello"; "world"; "my"; "name"; "is" ];
Quick_print.chars_list ~prefix:"char_list: " [ 'h'; 'e'; 'l'; 'l'; 'o' ];
Quick_print.int_list ~prefix:"int_list: " [ 1; 2; 3; 4; 5 ];
Quick_print.float_list ~prefix:"float_list: " ~precision:2
  [ 1.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];

(*arrays*)
Quick_print.strings_array ~prefix:"string_list: "
  [| "hello"; "world"; "my"; "name"; "is" |];
Quick_print.chars_array ~prefix:"char_list: " [| 'h'; 'e'; 'l'; 'l'; 'o' |];
Quick_print.int_array ~prefix:"int_list: " [| 1; 2; 3; 4; 5 |];
Quick_print.float_array ~prefix:"float_list: " ~precision:4
  [| 1.3414; 2.1235; 3.9235; 4.12352221; 5.0 |];

(*hashtables*)
Quick_print.hashtable_int_string ~prefix:"int_str_ht: " (create_int_str_ht ());
Quick_print.hashtable_int_char ~prefix:"int_char_ht: " (create_int_char_ht ());
Quick_print.hashtable_int_int ~prefix:"int_int_ht: " (create_int_int_ht ());
Quick_print.hashtable_int_float ~prefix:"int_float_ht: " ~precision:3
  (create_int_float_ht ());

Quick_print.hashtable_string_string ~prefix:"str_str_ht: "
  (create_str_str_ht ());
Quick_print.hashtable_string_char ~prefix:"str_char_ht: "
  (create_str_char_ht ());
Quick_print.hashtable_string_int ~prefix:"str_int_ht: " (create_str_int_ht ());
Quick_print.hashtable_string_float ~prefix:"str_float_ht: " ~precision:3
  (create_str_float_ht ());

Quick_print.hashtable_int_string_list ~prefix:"int_str_list_ht: "
  (create_int_str_list_ht ());
Quick_print.hashtable_int_char_list ~prefix:"int_char_list_ht: "
  (create_int_char_list_ht ());
Quick_print.hashtable_int_int_list ~prefix:"int_int_list_ht: "
  (create_int_int_list_ht ());
Quick_print.hashtable_int_float_list ~prefix:"int_float_list_ht: " ~precision:2
  (create_int_float_list_ht ());

Quick_print.hashtable_string_string_list ~prefix:"int_str_list_ht: "
  (create_str_str_list_ht ());
Quick_print.hashtable_string_char_list ~prefix:"int_char_list_ht: "
  (create_str_char_list_ht ());
Quick_print.hashtable_string_int_list ~prefix:"int_int_list_ht: "
  (create_str_int_list_ht ());
Quick_print.hashtable_string_float_list ~prefix:"int_float_list_ht: "
  ~precision:2
  (create_str_float_list_ht ());

Quick_print.hashtable_char_string_list ~prefix:"char_str_list_ht: "
  (create_char_str_list_ht ());
Quick_print.hashtable_char_char_list ~prefix:"char_char_list_ht: "
  (create_char_char_list_ht ());
Quick_print.hashtable_char_int_list ~prefix:"char_int_list_ht: "
  (create_char_int_list_ht ());
Quick_print.hashtable_char_float_list ~prefix:"char_float_list_ht: "
  ~precision:2
  (create_char_float_list_ht ())

