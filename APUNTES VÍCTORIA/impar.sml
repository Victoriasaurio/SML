fun impar(x) = (x mod 2) = 1;

fun remove_if f[] = []
| remove_if f(a::y) = if f(a) then remove_if f y
                        else a::(remove_if f y) ;

(* Ejemplos
    remove_if impar [0,1,2,3,4,5,6,7,8,9] -----> it = [0,2,4,6,8] : int list
*)

(*  remove_if impar [0,1,2,3,4,5]
    0::remove_if impar [1,2,3,4,5]
    0::remove_if impar [2,3,4,5]
    0::2::remove_if impar [3,4,5]
    0::2::remove_if impar [4,5]
    0::2::4::remove_if impar [5]
    0::2::4::remove_if impar []
    0::2::4::[]
    0::2::[4]
    0::[2,4]
    [0,2,4]
*)

(*Suma de dos valores con una valor predefinido*)
val z = 2 ;
fun addx y = z + y ;

(*
    use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/impar.sml" ;
*)