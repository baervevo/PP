let rec split2 list a b =
  if list = [] then
    ([], [])
  else
    let head = List.hd list in
    let tail = List.tl list in
    let (x, y) = split2 tail a b in

    if head <= a && head >= b then
      (head :: x, head :: y)
    else 
      if head <= a then
        (head :: x, y)
      else if head >= b then
        (x, head :: y)
      else
        (x, y)
      ;;

split2 [5.0; 4.0; 3.0; 2.0; 3.0; 5.0] 3.0 4.0;;
split2 [] 3 4;;