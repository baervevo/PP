type 'a graph = Graph of ('a -> 'a list)

let listDFS (Graph graph) root = 
  let rec listDFSHelper stack visited =
    match stack with
    | [] -> List.rev visited
    | node :: tl ->
      if List.mem node visited then
        listDFSHelper tl visited
      else
        let children = graph node in
        listDFSHelper (children @ tl) (node :: visited)
  in

  listDFSHelper [root] [];;