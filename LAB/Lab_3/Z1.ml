let mapIndex xs =
  let rec mapIndexHelper i xs =
    match xs with
    | [] -> []
    | hd :: tl -> (i, hd) :: mapIndexHelper (i + 1) tl
  in

  mapIndexHelper 0 xs

let ( !? ) wspolczynniki =
  fun x -> List.fold_left
    (fun acc (i, a) -> acc +. a *. x ** float_of_int i)
    0.0 
    (mapIndex wspolczynniki)
in

let w1 = !? [1.;2.;3.];;
w1 0.;;
w1 2.;;
let w2 = !? [];;
w2 5.;;
let w3 = !? [8008135.];;
w3 9999999.;;
