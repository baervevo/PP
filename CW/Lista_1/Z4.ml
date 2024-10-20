let rec sqrList (xs: int list): int list =
  if xs = [] then
    []
  else
    let head = List.hd xs in
    let tail = List.tl xs in
    head * head :: sqrList(tail)

let lst = [1;2;3];;
assert (sqrList lst = [1;4;9])