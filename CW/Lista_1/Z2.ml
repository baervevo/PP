let rec count (x: 'a) (xs: 'a list) : int =
  if xs = [] then
    0
  else
    (if (List.hd xs) == x then 1 else 0) + count x (List.tl xs)

let lst = [1; 2; 3; 1; 1; 2];;
assert (count 1 lst = 3);;