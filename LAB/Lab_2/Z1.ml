let indexSwap i j =
  let rec swapIndicesHelper j list v =
    match (j, list) with
    | (0, hd :: tl) -> (hd, v :: tl)
    | (_, hd :: tl) -> let (x, y) = swapIndicesHelper (j - 1) tl v in (x, hd :: y) 
    | _ -> (v, [])
  in

  let rec swapIndices i j list =
    match (i, j, list) with
    | (0, _, hd :: tl) -> let (x, y) = swapIndicesHelper (j - 1) tl hd in x :: y
    | (_, 0, hd :: tl) -> let (x, y) = swapIndicesHelper (i - 1) tl hd in x :: y
    | (_, _, hd :: tl) -> hd :: swapIndices (i - 1) (j - 1) tl
    | _ -> list
  in

  fun list -> swapIndices i j list
;;

let indexSwap15 = indexSwap 1 5;;
indexSwap15 [0;1;2;3;4;5];;
indexSwap15 [0;1;2];;
let indexSwap51 = indexSwap 5 1;;
indexSwap51 [0;1;2;3;4;5];;
let indexSwap9999 = indexSwap 99 99;;
indexSwap9999 [0;1;2;3];;