let rec replicate (x: 'a) (n: int): 'a list =
  if n = 0 then
    []
  else if n > 0 then
    x :: replicate x (n - 1)
  else
    failwith "n has to be positive!"

let x = "la";;
assert (replicate x 5 = ["la"; "la"; "la"; "la"; "la"]);;