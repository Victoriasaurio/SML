(* Funciones de orden superior, la funcion map permite usar una funcion anterior para 
* ser aplicada a la funcion que inicia con map 
* La primer funcion es doble x = x * 2;
* luego se le aplica el map a un arreglo 
* como usado para listas si quieres ingresar un valor es de la siguiente forma   map doble[1];
*)

fun doble x = x * 2; 
map doble[1];
map doble[1,2,3,4,5];



(* Otros ejemplos de aplicacion de la funcion map con otras funciones  
*  en la funcion fisrt los datos dentro de la lista son tuplas de datos 
* map se implementa en lista para afectar a toda la lista 
*)

fun succ x = x + 1 ;
fun cuadrado x = x * x;
fun fisrt(x,y) = x;

map succ[1,2,3,4];
map cuadrado[1,2,3,4];
map fisrt[(1,2),(3,4),(5,6)];
map fisrt[(5,"d"),(6,"f"),(7,"t")];

(* Ejemplo de como aplicar una funcion map a otra funcion map 
*   se sigue usando las funciones principales de succ, cuadrado y fisrt
*)

map cuadrado (map fisrt[(5,"d"),(6,"f"),(7,"t")]);

(* Funcion composicion sin map, se sigue usando las funciones principales de succ, cuadrado y fisrt
*   
*)

fun comp f g x = f (g x);
comp doble cuadrado 3;
comp cuadrado doble 3;

(* Funcion composicion nueva con un map, se sigue usando las funciones principales de succ, cuadrado y fisrt
*   
*)

fun compuesta (f,g) x = f( g(x) );
map (compuesta(cuadrado, fisrt)) [(7,"a"),(8,"b"),(9,"c")];

(* Funcion que almacena varios datos y se pueden imprimir sus filas y columnas
*   map --> solo map agarra el primer valor.
map+hd --> 
hd --> toma el primer dato de una lista. 
*)
val x = [ [11,12,13,14],
          [21,22,23,24],
          [31,32,33,34] ];

"------------------------------------------filas----------------------------------------";
hd x;
hd( tl(x) );
tl(x);

"------------------------------------------Columnas--------------------------------------";
map hd x;
map ( hd o tl) x;
map (hd o tl o tl) x ;
map (hd o tl o tl o tl) x ;

"------------------------------------------Fin Columnas--------------------------------------";


(* Otra forma de crear una funcion de composicion usando una o minúscula
*   
*)

(cuadrado o doble) 2;
map (cuadrado o fisrt) [(8,"a"),(8,"b"),(8,"c")];

"----------------------------------------------------------------------------------------------";

(* Funcion sin nombre declarada con FN, se acompañada de map para que surta efecto, esta
* funcion no se pude hacer usar solo con  nf 2
*)

map (fn x => x*2) [1,2,3,4,5];
