let rec fib n =
  match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> fib (n-1) + fib (n-2)
;;

let fibTail n =
  let rec fibTailHelper i x y =
    match i with
    | 0 -> x
    | _ -> fibTailHelper (i - 1) y (x + y)
  in

  fibTailHelper n 0 1
;;