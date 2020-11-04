
(*Funcion para recibir exception y a su vez imprimi apartir del numero
* que esta fuera del listado para encontrarla en el listado
*)
exception Nomatch;
fun member( a, [] ) = raise Nomatch
  | member( a, b::y) = if a = b then b::y
                        else member(a, y);
member(4,[1,2,3,4,5,6]);

(*Aqui se da el error y muestra la exception, el 8 no esta en la lista
*)
member(8,[1,2,3,4,5,6]);

(* Esta funcion ponerla en el SML directo para que se vea el mensaje ("No esta en la lista")

*
*)
fun member2(a,x) = member(a, x) handle Nomatch =>
               ( print("No esta en la lista ") ; []);
member2(8,[1,2,3,4,5,6]);