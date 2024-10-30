let rec replaceNth list n v =
  match (n, list) with
  | (0, _ :: tl) -> v :: tl
  | (i, _) when i < 0 -> failwith "Index cannot be negative"
  | (_, []) -> failwith "Index exceeds list length."
  | (i, hd :: tl) -> hd :: replaceNth tl (n - 1) v
;;