fun succ x = x + 1

fun doble x = x + x

fun triple x = 3 * x;
 

(* Comentarios en SML
*f g x = (f ° g) (x)
*
*f(x) = 2 *x
*g(x) = x^2
*
*(f°g)(2) = 8 ??
*
*(g°f)(2) = 16 ¡¡
*
*(g 2) = ?? 8
*f g 2 = equivale a la 16
*
*g (f 2)
*)

fun ff x = 2*x ;
fun gg x = x*x;

(*
* Para evaluar las funciones compuestas se escribe:
* ff (gg 2);
* gg (ff 2);
*)


(*
*funcion para imprimir el tamaño de la milength([1,2,3,5]), 
* pero si esta vacia la lista entonces se retorna 0
*)

fun milength(x) = if null(x) then 0
                    else 1 + milength( tl(x) )




(*funcion que imprime dos listas del tipo funcion([1,2],[3,4]) y las junta en una sola
* pero si la primera lista esta vacia funcion([],[3,4])  solo se imprime la segunda lista llamada z
*)
fun append(x,z)= if null(x) then z 
                    else hd(x)::append(tl(x), z)               



(*funcion recursiva que reacomoda la lista metiendolas de
* la siguiente forma:  reverse([2,3,4], [1]) 
*)
fun reverse(x,z) = if null(x) then z
                    else reverse(tl(x), hd(x)::z)

(*funcion recursiva que reacomoda una sola lista de la siguiente forma:  reverse([1,2,3,4,5]) 
* que es tl(X) = segunda lista que se invierte 
* que es hd(x) = cabeza de la lista 
*)
fun mireverse(x) = if null(x) then []
                    else mireverse(tl(x)) @ [hd(x)]



(* Otra funcion que permite calcular la dimensión de un arreglo
*
*)
fun otrolength([]) = 0
    | otrolength(a::y) = 1 + otrolength(y)


(* Otra funcion que imprime dos listas del tipo funcion([1,2],[3,4]) y las junta en una sola
* pero si la primera lista esta vacia solo se imprime la segunda lista llamada z
*
*)
fun otroappend([],z) = z
| otroappend(a::y,z) = a::otroappend(y,z) 

(* Otra funcion que imprime dos listas del tipo funcion([1,2],[3,4]) y las junta en una sola
* pero si la primera lista esta vacia solo se imprime la segunda lista llamada z
*
*)
fun miappend([], z) = z
    | miappend(a::y, z) = a::miappend(y, z)



(* Otra strip(1,[1,1,2,3,4,5,1,1]);     strip("x",["x","y","x"])
* Esta funcion elimina los primeros 1 del arreglo, los numeros a borrar siempre van al principio
* Si no existe el numero que se desea elimnar la lista se imprime completa
* strip(6,[1,2,3,4,5]);
* esta funcion imprime la lista modificada
*)
fun strip( a,[])= []
    | strip(a, b::y) = if a=b then strip(a, y)
                        else b::y

(* Otra mistrip(1,[1,1,2,3,4,5,1,1]);    mistrip("x",["x","y","x"])
* Esta funcion elimina los primeros 1 del arreglo, los numeros a borrar siempre van al principio
* Si no existe el numero que se desea elimnar la lista se imprime completa
* mistrip(6,[1,2,3,4,5]);   
* esta funcion devuelve otra lista nueva
*)
fun mistrip(a,x) = if null(x) then nil
                    else if a=hd(x) then mistrip(a, tl(x))
                        else x



(* Con case
* Otra funcion que imprime dos listas del tipo funcion([1,2],[3,4]) y las junta en una sola
*)
fun otrappendd(x,z) = case x of [] => z
                        | a::y => a::otrappendd(y,z)



(* Esta funcion extrae el primer elemento de una lista
* head([1,2,3]);
* Si el arreglo esta vacio se genera un error
* head([]); pero no se llego a una solución con el maestro 
*)
fun head(a::y) = a  

