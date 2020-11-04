
(*Funcion composicion de funciones, el numero 4 es el valor que toma x para el resultado final*)
fun comp(F, G, x) = G(F(x));
comp( fn x => x + 3, fn y => y*y + 2*y,4 );


(* Composicion de funciones
* Se crean las funciones por separado y luego se unen en val H
* y luego a val H se le asgina un valor para que sea el valor que va a tomar x en la funcion 
* es decir, para tener el resultado de la composicion
*)
fun F x = x + 3;
fun G y = y*y + 2*y;

val H = G o F;
H 4;
H 2;
H 1;
H 3;

(*Separa las letras de la palabra joi*)
explode "joi";
(*Imprime de reversa la lista*)
rev[1,2,3,4];

(* Funcion compuesta que primero separa las palabras, luego reversea las palabras y de ultimo 
* toma el valor i que da al principio de cada palabra ya reverseada
*)
map (hd o rev o explode) ["siggi", "joi", "palli", "gumi"];

(*Funcion compuesta, otra forma de hacer composicion de funciones, toma las funciones F y G 
* que se crearon anteriormente en este documento
*)
fun comp2 F G =
  let
        fun C x = G(F(x))
  in
        C
  end;
val H = comp2 F G;
H 4;