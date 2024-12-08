let sumProd xs =
  let f (s, p)
  (List.fold_left (fun acc x -> acc + x) 0 xs, List.fold_left (fun acc x -> acc * x) 1 xs);;