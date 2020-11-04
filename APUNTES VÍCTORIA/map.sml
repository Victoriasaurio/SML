(* 1. Map permite ingresar una lista de valores en una función que por sí sola
  solo permite un valor.
  2. Ejemplo de composición de funciones.
*)

fun mif(x) = 2*x ;

fun otraf(x) = x*x ;

(*
    mif 2 -----> it = 4:int
    map mif[1,2,3,4,5] -----> it = [2,4,6,8,10]:int list
*)

(*COMPOSICIÓN DE FUNCIONES: Primero se resuelve g(x) en el primer ejemplo 'otraf'
  y después se resuelve f(gx) que en este caso sería 'mif'. Para el segundo ejemplo 
  las funciones se invierten.
*)
fun compose(f,g) x = f(g(x)) ;

(* Solo permite ingresar un parámetro
    compose(mif,otraf) 2 -----> it = 8:int
    compose(otraf,mif) 2 -----> it = 16:int
*)

(* Con Map se permite ingresar una lista como parámetro
    map(compose(mif,otraf)) [1,2,3,4] -----> it = [2,8,18,32] : int list
    map(compose(otraf,mif)) [1,2,3,4] -----> it = [4,16,36,64] : int list
*)

fun first(x,y) = x ;
fun square x = x*x ;

(* Ejemplos con Map y Compose
  ° first(1,"a") -----> it = 1 : int 
  ° map first[(1,"a"), (2,"b"), (3,"c")] -----> it = [1,2,3] : int list
  ° map(compose(square,first)) [(1,"a"), (2,"b"), (3,"c")] -----> it = [1,4,9] : int list 
*)

(*
    use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/map.sml" ;
*)