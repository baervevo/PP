let rec hits listA listB =
  if listA = [] || listB = [] then
    0
  else
    let headA = List.hd listA in
    let tailA = List.tl listA in
    let headB = List.hd listB in
    let tailB = List.tl listB in
    if headA = headB then
      1 + hits tailA tailB
    else 
      hits tailA tailB

let resultA = hits [3; 2; 1] [1; 2; 3];;
let resultB = hits [3; 2; 1] [1; 2; 1; 0; 0; 0; 0];;
let resultC = hits [] [1; 2; 1; 0; 0; 0; 0];;

Printf.printf "%d, %d, %d" resultA resultB resultC;;