(*Recursividad*)

(*sum : int list -> int*)
fun sum [] = 0
    | sum (x::L) = x + (sum L) ;

(*Función append que une dos lista*)
fun append(x,z) = if null(x) then z
                    else hd(x)::append(tl(x),z) ;

(*append([1,2],[3,4,5]) -----> it = [1,2,3,4,5]*)

(*
    append([1,2],[3,4,5]) = 
    1::append([2],[3,4,5]) =
    1::2::append([],[3,4,5]) =
    1::2::[3,4,5] =
    1::[2,3,4,5] = [1,2,3,4,5]
*)

(*Devuelve la longitud de una lista*)
fun length(x) = if null(x) then 0
                else 1 + length(tl(x)) ;
(*length [1,2,3,4,5,6] -----> it = 6:int *)

(*REVERSE -----> rev[1,2,3,4,5,] : Función que se encuentra en ml*)
(*Función reverse que une dos listas e invierte la primera lista*)
fun reverse(x,z) = if null(x) then z
                    else reverse(tl(x), hd(x)::z) ;

(*reverse([8,2,5],[4,7,1]) -----> it = [5,2,8,4,7,1] : int list *)

(*
    reverse([2,3,4],[1]) =
    reverse([3,4],2::[1]) = reverse([3,4],[2,1]) =
    reverse([4],3::[2,1]) = reverse([4],[3,2,1]) =
    reverse([],4::[3,2,1]) = reverse([],[4,3,2,1]) =
    [4,3,2,1]
*)

(*Otra forma de declarar la función reverse de una sola lista*)
fun reverse2(x) = if null(x) then nil
                    else reverse2(tl(x))@[hd(x)] ;

(*
    reverse[1,2,3,4]
    reverse[2,3,4] @ [1]
    reverse[3,4] @ [2] @ [1]
    reverse[4] @ [3] @ [2] @ [1]
    reverse [] @ [4] @ [3] @ [2] @ [1]
    [] @ [4] @ [3] @ [2] @ [1]

    [4]
    [4,3]
    [4,3,2]
    [4,3,2,1]
*)

(*RUTA
*   use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/lista-01.sml" ;
*)