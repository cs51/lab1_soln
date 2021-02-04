(*
                              CS51 Lab 1
                     Basic Functional Programming
                         Some Testing Methods
 *)

(* Here, we introduce a few ways to test the functions you wrote in
   lab. One or more of these methods may be useful in the future as
   you will want to provide for unit-testing of your code for problem
   sets and the final project. As an example, we provide a few tests
   for the square_all function.
 *)

open Lab1 ;; (* for access to your lab1 solution *)
open CS51Utils.Absbook ;; (* for access to the unit_test function *)

(* Method 1: Boolean

   This method executes the tests right away, returning false
   on failure. Failure in these tests will only be detected
   by running this code in a REPL.
 *)
let test_square_bool () : bool =
  square 0 = 0
  && square 1 = 1
  && square ~-1 = 1
  && square 4 = 16
  && square ~-10 = 100;;

(* Run the tests. Note that if the test function returns false, simply
compiling and running this file will not reveal the failure. *)

test_square_bool () ;;

(* Method 2: unit_test

   By making use of side effects, we can print an
   indicative message relating to each test. We will
   use the unit-test function provided in the Absbook module.
 *)
let test_square () =
  unit_test (square 0 = 0) "square zero";
  unit_test (square 1 = 1) "square one";
  unit_test (square ~-1 = 1) "square neg_one";
  unit_test (square 4 = 16) "square four";
  unit_test (square ~-10 = 100) "square neg_ten";;

(* Now run the tests *)
let _ = test_square () ;;

(* To actually execute the test, you need to run this program. First 
   you'll need to compile the file with 

     % ocamlbuild -use-ocamlfind lab1_tests.byte

   Once you have a compiled file, you need to run the compiled code:

     % ./lab1_tests.byte

   We've provided a helpful makefile for you that will do both for you
   with the command

     % make tests
 *)
