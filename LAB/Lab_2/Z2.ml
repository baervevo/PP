let listLength list =
  let rec listLengthHelper list len =
    match list with
    | [] -> len
    | hd :: tl -> listLengthHelper tl (len + 1)
  in

  listLengthHelper list 0

let split3Rec list =
  let listLen = listLength list in
  let segmentLength = listLen / 3 in

  let rec getNFirstElements list n =
    match (n, list) with
    | (0, lst) -> ([], lst)
    | (i, hd :: tl) when i > 0 -> let (x, y) = getNFirstElements tl (i - 1) in (hd :: x, y)
    | _ -> failwith "n exceeds list length"
  in

  let (seg1, tl1) = getNFirstElements list segmentLength in
  let (seg2, tl2) = getNFirstElements tl1 segmentLength in
  let (seg3, tl3) = getNFirstElements tl2 segmentLength in

  (seg1, seg2, seg3)

let split3Tail list =
  let rev list =
    let rec revHelper list revList =
      match list with
      | [] -> revList
      | hd :: tl -> revHelper tl (hd :: revList)
    in

    revHelper list []
  in

  let listLen = listLength list in
  let segmentLength = listLen / 3 in

  let rec split3TailHelper a b c list n =
    match n, list with
    | i, hd :: tl when i <= segmentLength -> split3TailHelper (hd :: a) b c tl (n + 1)
    | i, hd :: tl when i <= 2 * segmentLength -> split3TailHelper a (hd :: b) c tl (n + 1)
    | i, hd :: tl when i <= 3 * segmentLength -> split3TailHelper a b (hd :: c) tl (n + 1)
    | i, _ -> (rev a, rev b, rev c)
  in

  split3TailHelper [] [] [] list 1
;;

split3Rec [];;
split3Tail [];;
split3Rec [1;2;3;4;5;6;7;8;9];;
split3Tail [1;2;3;4;5;6;7;8;9];;
split3Rec [1;2];;
split3Tail [1;2];;
split3Rec [1;2;3;4;5;6;7];;
split3Tail [1;2;3;4;5;6;7];;