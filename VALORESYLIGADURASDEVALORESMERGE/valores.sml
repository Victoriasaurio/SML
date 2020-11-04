

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


(* Esta funcion es para lo reales y multiplica cuatro veces la x, luego cuatro veces cuatro
* y por ultimo cuatro veces veinte 
*)
fun cienPotencia(x: real) =
    let
       val cuatro = x*x*x*x
       val veinte = cuatro*cuatro*cuatro*cuatro
    in
       veinte*veinte*veinte*veinte
    end;
cienPotencia(2.0);

(* Funcion merge, esta permite que cuando tienes dos listas de numeros los junta 
* y devuelta una lista correctamente ordenada, pero los numeros se meten tipo merge([1,3,5],[2,4,6]);
*)

fun merge(nil,M) = M
  | merge(L,nil) = L
  | merge(x::xt, y::yt)= 
        if(x<y) then x::merge(xt,y::yt)
        else y::merge(x::xt,yt);

merge([7,9,11],[8,10,12]);
merge([1,3,5],[2,4,6]);

(* Asi es como funciona el merge para ordenar
*
* merge([1,3,5], [2,4,6]); Es 1 < 2 ? si
* 1::merge([3,5], [2,4,6]); Es 3 < 2 ? no 
* 1::2::merge([3,5], [4,6]); Es 3 < 4 ? si
* 1::2::3::merge([5], [4,6]); Es 5 < 4 ? no
* 1::2::3::4::merge([5], [6]); Es 5 < 6 ? si
* 1::2::3::4::5::merge([], [6]); Es L = [] ?
* 1::2::3::4::5::[6]
* 1::2::3::4::5::6::[]
* ......despues de varios pasos.....
* [1,2,3,4,5,6]
*)


(* Split es la funcion inversa a la merge anteriormente explicada
* y divide una lista en dos partes  
*
*)

fun split(nil) = (nil,nil)
  | split([a]) = ([a],nil)
  | split(a::b::rest) = 
    let 
      val (M,N) = split(rest)
    in (a::M, b::N) end;

split([1,2,3,4,5]);
split([1,2,3,4,5,6]);


(* Asi es como funciona el split separa
* 1::2::3::4::5::[6]
* 1::2::3::4::[5,6]
* 1::2::3::[4,5,6]
* 1::2::[3,4,5,6]
* 1::[2,3,4,5,6]
* [1,2,3,4,5,6]
*)

(* Asi es como funciona el split separa
* split([1,2,3,4,5,6])
* split(1::2::[3,4,5,6])
*      let
*        val (M,N) = split([3,4,5])
*      in 
*          (1::M, 2::N)
*      end;
* split([3,4,5]) = split(3::4::[5])
* a = 3, b = 4, rest [5]
*     (M', N') = split([5])
       in 
         (3::M', 4::N')
* split([5]) = ([5], nil)
* conclusion ([5], nil) = (M', N') entonces M' = [5] y N' = nil
* Sustituyendo 
*         (1::[3,5], 2::[4])
*         ([1,3,5], [2,4])
*)


(* Funcion mergeSort que ordena los datos metiendoles desordenados, esta si los ordena 
* sin importar la forma en la que son ingresados
*)
fun mergeSort(nil) = nil
  | mergeSort([a]) = [a]
  | mergeSort(L) =
           let
              val (M,N) = split(L)
           in
              merge( mergeSort(M), mergeSort(N)) end;
mergeSort([5,6,3,7,2]);
mergeSort([1,6,3,7,2]);
mergeSort([1,5,3,4,2]);


(* TRAZADO DE LA FUNCION MERGESORT 
*
*mergeSort([3,6,5,7,2])
*let
*val (M, N) = split([3,6,5,7,2]) = ( [3,5,2], [6,7] ) = (M,N)
*in
*merge(mergeSort([3,5,2], mergeSort([6,7]) )
*
*end;
*
*(*Calculos *) (* 1ER ARGUMENTO *)
*mergeSort([3,5,2])
*let
*val (M,N) = split([3, 5, 2])= ([3,2], [5] ) = (M,N)
*in
*merge(mergeSort([3,2]), mergeSort([5]))
*mergeSort([3,2]) = split([3,2]) = ([3], [2])
*merge(mergeSort([3]), mergeSort([2]))
*merge( [3], [2])
*2::merge([3],[])
*2::3
*[2,3]
*
*mergeSort([5]) = [5]
*merge([2,3], [5])
*2::merge([3],[5])
*2::3::merge([],[5])
*2::3::5
*[2,3,5]
*
*(*Calculos *) (* 2do ARGUMENTO *)
*mergeSort([6,7])
*let
*val (M,N) = split([6,7]) = ([6], [7])
*in
*merge(mergeSort([6]), mergeSort([7]))
*merge([6], [7])
*6::merge([],[7])
*6::[7]
*[6,7]
*
*(* calculo FINAL *)
*
*merge( [2,3,5], [6,7] )
*2::merge([3,5],[6,7])
*2::3::merge([5], [6,7] )
*2::3::5::merge([], [6,7])
*2::3::5::[6,7]
*2::3::5::6::7
*[2,3,5,6,7] (* RESPUESTA FINAL *)
*)