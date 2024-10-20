let fiddle4 (a, b, c, d) = 
  let third = c -. b in
  (d, a, third)

let printTuple (a, b, c) =
  Printf.printf "(%.2f, %.2f, %.2f)\n" a b c

let result = fiddle4(1.3, 2.0, 3.1, 4.2);;
printTuple result;;
