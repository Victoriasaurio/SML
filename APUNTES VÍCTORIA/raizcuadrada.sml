(*Encontrar la raíz cuadrada entera*)

(*Primer ejemplo*)
(*n = 5*)
fun isqrt_0 (n:int):int =
    let
      fun loop (i:int):int = 
        if n < i*i then i-1 else loop (i+1)
    in
      loop 1
    end

(*Segundo ejemplo*)
fun isqrt_1 (n:int) : int =
    if n=0 then 0 else
        let
            val r = isqrt_1 (n-1) + 1
        in
            if n < r * r then r - 1 else r
        end

(*Tercer ejemplo*)
fun isqrt_2 n =
    if n=0 then 0 else
        let
            val r = 2 * isqrt_2 (n div 4) + 1
        in
            if n < r * r then r - 1 else r
    end