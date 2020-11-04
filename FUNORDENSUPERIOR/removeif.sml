(* Funcion que elimina los numeros impares y solo imprime los pares  
* 
*) 

fun impar( x ) = ( x mod 2 ) = 1; 

fun remove_if f [] = []
  | remove_if f (a::y) = if f(a) then remove_if f y 
                         else a::(remove_if f y) ;

remove_if impar [0,1,2,3,4,5,6,7,8,9];

"--------------------------------------------------------------------------------------------";
remove_if impar [0,1,2,3];

(* Asi es como funciona el remove_if con la funcion impar
*
*  remove_if impar [0,1,2,3];
*  0::remove_if impar [1,2,3];
*  0::remove_if impar [2,3];
*  0::2::remove_if impar [3];
*  0::2::remove_if impar [];
*  0::[2];
*  .........
*  [0,2]
*)


"---------------------------------------------------------------------------------------------";
(* Funcion que le suma x a la funcion addx(4); y nos da e l resultado
*
*)
val x = 2;
fun addx y = x + y;
addx(4);

(* Funcion que le suma x a la funcion addx(4); y nos da e l resultado
* en este caso el nuevo valor de x no se le suma la y debido a que la funcion se quedo
* con el valor de x anteior. 
*)
val x = 5;
addx(3);

(* Funcion que le suma x a la funcion addx(4); y nos da e l resultado
* en este caso el nuevo valor de x no se le suma la y debido a que la funcion se quedo
* con el valor de x anteior. La unica forma de que tome el nuevo valor es declarando de nuevo
* la funcion: 
*)

val x = 5;
fun addx y = x + y;
addx(3);


(* Repaso de funciones
* Esta solo suma enteros 
*)


fun suma( x,y ) = x + y;
suma(2,3);

(* Repaso de funciones
* Esta solo suma reales
*)

fun suma( x,y ):real = x + y;
suma(2.0,3.0);


(* Esta funcion devuelve la misma lista, es el polimorfismo
* 
*)

fun I( x ) = x;
I([1,2,3,4,5,6,7,8]);
I("Hola","mundo");
I(7);

(* Ambiente dinámico, Ligaduras a valores 
* recordar que aunque se ponga la misma variable varias veces siempre se tomara el valor inmediato
*)
val v = 7;
val w = 10;
val f = v + w;
val v = 5;
val g = v + w;
val x = 2;
fun sumax y = x + y;
sumax(3);


