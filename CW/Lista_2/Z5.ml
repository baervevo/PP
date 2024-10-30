let rec initSegment x y =
  match (x, y) with
  | ([], _) -> true
  | (h :: t, []) -> false
  | (h1 :: t1, h2 :: t2) when h1 = h2 -> initSegment t1 t2
  | _ -> false
;;
