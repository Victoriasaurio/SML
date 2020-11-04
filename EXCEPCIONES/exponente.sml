
(* Funcion exponente con numeros reales 
*
*)
fun exponent2 x 0 = 1.0
  | exponent2 x y = x * exponent2 x (y-1);
exponent2 3.0 4;


fun exponent1(x, 0) = 1.0
  | exponent1(x, y) = x * exponent1(x, y-1);
val g = exponent2 3.0;
g 4;

