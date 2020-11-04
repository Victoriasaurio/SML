
fun hola() = "Hola, mundo";
print(hola());

(* Funcion que imprimi un listado en forma vertical*)

fun printlist [] = ()
  | printlist(x::xt) = (
    print(Int.toString(x));
    print("\n");
    printlist(xt)
  );

  printlist[1,2,3,4,5,6,7];