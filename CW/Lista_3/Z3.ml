let rec insert cmp x = function
  | [] -> [x]
  | y :: ys as list -> if cmp x y then x :: list else y :: insert cmp x ys

let rec insertionSort cmp = function
  | [] -> []
  | x :: xs -> insert cmp x (insertionSort cmp xs)

(*///////////////////////////////////////*)

let rec merge cmp left right =
  match left, right with
  | [], ys -> ys
  | xs, [] -> xs
  | x::xs, y::ys -> 
    if cmp x y then x :: merge cmp xs (y :: ys)
    else y :: merge cmp (x :: xs) ys

let rec split lst =
  match lst with
  | [] -> [], []
  | [x] -> [x], []
  | x :: y :: zs -> 
    let left, right = split zs in
    (x :: left, y :: right)

let rec mergesort cmp = function
  | [] -> []
  | [x] -> [x]
  | lst ->
    let left, right = split lst in
    merge cmp (mergesort cmp left) (mergesort cmp right)