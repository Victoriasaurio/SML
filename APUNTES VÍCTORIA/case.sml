(*Case and patterns*)

(*Funciones creadas con 'case' que permiten la unión entre dos listas*)

fun append([],z) = z
|   append(a::y,z) = a::append(y,z) ;

fun otroappend(x,z) = case x of [] => z
|   a::y => a::otroappend(y,z) ;

(*
    use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/case.sml" ;
*)