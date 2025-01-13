let pascalRowF prev =
  let rec helper acc = function
  | [] -> acc
  | [_] -> 1 :: acc
  | x :: y :: tl -> helper ((x + y) :: acc) (y :: tl) in
  1 :: (List.rev (helper [] prev))

let pascalTriangleRevF n =
  let rec helper acc k =
    match k with
    | 0 -> acc
    | _ ->
      match acc with
      | hd :: _ -> helper ((pascalRowF hd) :: acc) (k - 1)
      | _ -> failwith "Illegal acc initialization" in
  helper [[1]] (n - 1)

let pascalGiftF n k =
  let triangle = pascalTriangleRevF n in
  let revIdx = abs ((n - 1) - k) in 
  let rec prefix acc i j =
    if i >= n then acc else
      let row = List.nth triangle (n - i - 1) in
      prefix (List.nth row j :: acc) (i + 2) (j + 1)
  in
  let p = prefix [] (revIdx + 2) 1 in
  p @ (List.nth triangle (n - revIdx - 1)) @ (List.rev p)

let pascalRowI prev =
  let n = Array.length prev in
  let result = Array.make (n + 1) 1 in
  for i = 0 to (n - 2) do
    result.(i + 1) <- prev.(i) + prev.(i + 1)
  done;
  result

let pascalTriangleRevI n = 
  let result = Array.make n (Array.make 1 1) in
  for i = 0 to (n - 2) do
    let revIdx = n - i in
    result.(revIdx - 2) <- pascalRowI result.(revIdx - 1)
  done;
  result

let pascalGiftI n k =
  let triangle = pascalTriangleRevI n in
  let revIdx = abs ((n - 1) - k) in
  let prefix = ref [||] in
  let revPrefix = ref [||] in
  let i = ref (revIdx + 2) in
  let j = ref 1 in
  while !i < n do
    let row = triangle.(n - !i - 1) in
    let value = [|row.(!j)|] in
    prefix := Array.append value !prefix;
    revPrefix := Array.append !revPrefix value;
    i := !i + 2;
    j := !j + 1;
  done;
  Array.append (Array.append !prefix triangle.(n - revIdx - 1)) !revPrefix;;

pascalGiftI 5 0;;
pascalGiftI 5 1;;
pascalGiftI 5 2;;
pascalGiftI 5 3;;
pascalGiftI 5 4;;
pascalGiftI 5 5;;
pascalGiftI 5 6;;

pascalGiftF 5 0;;
pascalGiftF 5 1;;
pascalGiftF 5 2;;
pascalGiftF 5 3;;
pascalGiftF 5 4;;
pascalGiftF 5 5;;
pascalGiftF 5 6;;