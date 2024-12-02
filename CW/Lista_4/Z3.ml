type 'a binaryTree = Empty | Node of 'a * 'a binaryTree * 'a binaryTree

let listBFS binaryTree =
  let rec listBFSHelper q v = 
    match q with
    | [] -> List.rev v
    | Empty :: tl -> listBFSHelper tl v
    | Node (value, l, r) :: tl -> listBFSHelper (tl @ [l; r]) (value :: v)
  in

  listBFSHelper [binaryTree] [];;