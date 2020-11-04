(*Ordena los números de menor-mayor*)

fun merge(nil, M) = M
 | merge( L, nil) = L
 | merge(x::xt, y::yt ) =
 if x < y then x::merge(xt, y::yt )
 else y::merge( x::xt, yt );

(* Ejemplos
    merge([1,3,5],[2,4,6]) -----> it = [1,2,3,4,5,6] : int list
    merge([2,5,9],[1,2,7]) -----> it = [1,2,2,5,7,9] : int list
*)

(*Otra forma de ordenar los números de menor-mayor*)
fun split(nil) = (nil, nil)
 | split([a]) = ([a], nil)
 | split(a::b::rest) =
 let
    val (M, N) = split( rest )
 in
    (a::M, b::N)
 end ;

fun mergeSort( nil ) = nil
 | mergeSort( [a] ) = [a]
 | mergeSort( L ) =
 let
    val (M,N) = split( L )
 in
    merge( mergeSort(M), mergeSort(N) ) 
 end ;

(*Ejemplo
    mergeSort([5,8,1,9,4,5,3]) -----> it = [1,3,4,5,5,8,9] : int list 
*)

(*
    use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/merge.sml" ;
*)