(*Elimina los números que son iguales al primer parámetro, hasta que se encuentra 
  con un número diferente. Puede ingresarse cualquier tipo de lista, siempre que todos sean
  del mismo tipo.
*)

fun strip(a,[]) = []
|   strip(a,b::y) = if a=b then strip(a,y)
                    else b::y ;

(*strip(1,[1,1,2,3,1,1]) -----> [2,3,1,1] *)

(*Otra implementación para strip*)
fun otrostrip(a,x) = if null(x) then nil
                else if a=hd(x) then strip(a,tl(x))
                else x ;

(* otrostrip(1,[1,1,2,3,1,1]) -----> [2,3,1,1] *)

(*
    strip (1,[1,1,2,3,1,1])
    strip (1,[1,2,3,1,1])
    strip (1,[2,3,1,1])
    [2,3,1,1]
*)

(*
    use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/strip.sml" ;
*)