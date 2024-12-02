let sumProd xs =
  (List.fold_left (fun acc x -> acc + x) 0 xs, List.fold_left (fun acc x -> acc * x) 1 xs);;