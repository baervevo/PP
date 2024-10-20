let rec insert (list: 'a list) value (index: int) = 
  if index <= 0 then
    value :: list
  else
    if list == [] then
      [value]
    else
      List.hd list :: insert (List.tl list) value (index - 1)

let () =
  assert (insert [1; 2; 4] 3 2 = [1; 2; 3; 4]);
  assert (insert [1; 2; 4] 3 99999999 = [1; 2; 4; 3]);
  assert (insert [1; 2; 4] 3 (-99999999) = [3; 1; 2; 4]);