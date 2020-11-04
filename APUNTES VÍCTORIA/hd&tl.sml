(* HD AND MAP(HD) *)
val x = [ [11,12,13, 14],
          [21,22,23,24],
          [31,32,33,34] ] ;

(* Ejemplos
    hd(x) -----> it = [11,12,13,14] : int list. Toma la posición[0] de la lista.
    tl(x) -----> it = [[21,22,23,24],[31,32,33,34]] : int list list. Toma el resto de la lsita.

    hd(tl(x)) -----> it = [21,22,23,24] : int list. Toma la segunda posición de la lista.

    map hd(x) -----> it = [11,21,31] : int list. Toma la posición[0] de casa lista de la lista.
    map (hd o tl) x -----> it = [12,22,32] : int list
    map (hd o tl o tl)x -----> it = [13,23,33] : int list
*)

map (fn x => x + x) [1,2,3,4,5,6,7,8,9] ;
(* it = [2,4,6,8,10,12,14,16,18] : int list *)

(*
    use "/home/victoriasaurio/Vídeos/SEPTIMO SEMESTRE/PROGRAMACIÓN LÓGICA Y FUNCIONAL/UNIDAD 1/SML/APUNTES VÍCTORIA/hd&tl.sml" ;
*)