
fun sum [] = 0
  | sum (x::L) = x + sum(L);

sum(1::[2,3]);

(*
* 1 + sum[2,3]
* 1 + ( 2 + sum [3])
* 1 + ( 2 + (3 + sum[]))
* 1 + ( 2 + (3 + 0))
* 1 + (2 + 3)
* 1 + 5
* 6
*)

(*Funcion que da el tañano de una lista*)
fun length [] = 0
    | length (x::L) = 1 + length;

length[1,2,3,4]

(* length([1,2,3])
*  1 + length([2,3])
*  1 + 1 + length([3])
*  1 + 1 + 1 + length([])
*  1 + 1 + 1 + 0 
*)