
let test_hashtable () =
  let ht = Hashtbl.create 10 in

  Hashtbl.add ht 1 [ "Hello"; "World" ];
  Hashtbl.add ht 2 [ "OCaml"; "is"; "great" ];
  Hashtbl.add ht 3 [ "Another" ];

  Quick_print.hashtable_int_string_list ht;;
let test_hashtable_int_int_list () =
  let ht = Hashtbl.create 3 in
  Hashtbl.add ht 1 [1; 2; 3];
  Hashtbl.add ht 2 [4; 5; 6];
  Hashtbl.add ht 3 [7; 8; 9];
  Quick_print.hashtable_int_int_list ~prefix:"MyHashTable: " ht;;

let test_hashtable_int_float_list () =
  let ht = Hashtbl.create 3 in
  Hashtbl.add ht 1 [1.1234; 2.1235; 3.23456];
  Hashtbl.add ht 2 [4.98765; 5.87654; 6.76543];
  Hashtbl.add ht 3 [7.1; 8.01; 9.001];;

let () =
  Quick_print.strings_list ~prefix:"string_list: "
    [ "hello"; "world"; "my"; "name"; "is" ];
  Quick_print.chars_list ~prefix:"char_list: " [ 'h'; 'e'; 'l'; 'l'; 'o' ];
  Quick_print.int_list ~prefix:"int_list: " [ 1; 2; 3; 4; 5 ];
  Quick_print.float_list ~prefix:"float_list: " ~precision:2
    [ 1.3414; 2.1235; 3.9235; 4.12352221; 5.0 ];
  test_hashtable ();
  test_hashtable_int_int_list ();
  test_hashtable_int_float_list();
