let f x = 
  let rec loop x = loop x in
  loop x
;;