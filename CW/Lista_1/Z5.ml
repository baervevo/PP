let palindrome (xs: 'a list): bool =
  let rec reverse (xs: 'a list): 'a list =
    if xs = [] then
      []
    else
      let head = List.hd xs in
      let tail = List.tl xs in
      (reverse tail) @ [head]
  in
  
  xs = reverse xs

let lst = [1;3;1];;
assert (palindrome lst = true);;