let rec flatten1 (xss: 'a list list) =
  if xss = [] then
    []
  else
    (List.hd xss) @ (flatten1 (List.tl xss))

let lst = [[5;6];[1;2;3]];;
assert (flatten1 lst = [5;6;1;2;3]);;