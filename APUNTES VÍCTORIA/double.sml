(*Función de tipo int -> int*)
fun double(x:int):int = x + x

fun even(y:int):int = if y=0 then 0 else even(y-2)
(*even denotes {(v, 0) | v ≥ 0 & v mod 2 = 0}*)

(*Función que devuelve el doble de la función 'double'*)
fun double2(x) = double(double(x)) ;

(*PI Simple --> Da el resultado directamente con variables establecidas*)
let
    val pi:real = 3.14
in
    2.0 * pi
end;

(*PI con una función área --> Permite ingresar la variable x*)
local 
    val pi:real = 3.14
in
    fun area(x:real):real = pi*x*x
end ;

(*Área del círculo*)
local
    val pi:real = 3.14
    val pi2:real = 2.0 * pi
in
    fun circ(r:real):real = pi2 * r
end

(*RUTA
*   use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/double.sml" ;
*)