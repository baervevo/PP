let rec listLength (list: 'a list): int =
  if list = [] then
    0
  else
    1 + listLength(List.tl list)

let list = [1;2;3;4];;
assert (listLength list = 4);;