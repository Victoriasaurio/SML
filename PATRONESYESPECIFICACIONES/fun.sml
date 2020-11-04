(* funcion que incrementa los que le insertes en 1, puedes poner incr(2) incr(~3)
* 
*)
fun incr(x: int) : int = x + 1  

(* funcion que duplica cualquier numero insertado, puedes poner Dupli(2);
*  
*)
fun Dupli(x : int) : int = x * 2

(* funcion que si entran los digitos del 0 al 9 te imprime el mismo numero que entro
*  cuando la condicion es falsa se calcula el residuo y el cociente 
* ejemplo
* decimal(10)
* [3,1] -> este seria el resultado ya acomodado 
*)
fun decimal( n : int) : int list =
if n < 10 then [ n ] else ( n mod 10) :: decimal ( n div 10);

(* funcion que recibie numeros reales e imprime un producto de numeros reales
* sqareitt(5.0);
*)
 fun sqareit(a:real) : real = a * a

(* funcion que recibie numeros reales e imprime un producto con numero entero usando trunc
* sqareitt(5.0);
*)
 fun sqareitt(b:real) : int = trunc b * trunc b

(* funcion al ingresar ceros te devuelve true, en caso de no haber ceros devuelte false
* detectedZeros(0,0) = true 
* detectedZeros(0,1) = true
* detectedZeros(1,0) = true
* detectedZeros(1,1) = false
*)
 fun detectedZeros(x,y) = if x = 0 orelse y = 0 then true else false

(* Esta funcion permite imprimir x de dos numeros ingresados
* fst(1,2);
*)
fun fst(x : int, y : int) : int = x;


(* Esta funcion permite imprimir y de dos numeros ingresados
* snd(1,2);
*)
fun snd(x : int, y : int) : int = y;


(* Esta funcion permite imprimir una dubla de numeros a partir de un numero ingresado
* diag(1,2);
*)
fun diag(x : int) : int * int = (x,x);

(* Esta funcion imprime el valor de x aunque no se tenga puesto que tipo de variable
* fisrt(1,2);
* fisrt("Hola","mundo");
*)
fun fisrt(x,y) = x  




