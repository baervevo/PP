type 'a tree3 =
  | Empty
  | Node of {value: 'a; children: 'a tree3 * 'a tree3 * 'a tree3};;

let rec combineTree3 f = function
  | Node {value = v1; children = (l1, m1, r1)}, Node {value = v2; children = (l2, m2, r2)} ->
      Node {value = f v1 v2; children = (combineTree3 f (l1, l2), combineTree3 f (m1, m2), combineTree3 f (r1, r2))}
  | _ -> Empty;;

let tree1 =
  Node {
    value = 1;
    children = (
      Node { value = 2; children = (
        Node { value = 3; children = (Empty, Empty, Empty) },
        Empty,
        Node { value = 4; children = (Empty, Empty, Empty) }
      )},
      Node { value = 5; children = (Empty, Empty, Empty) },
      Node { value = 6; children = (
        Node { value = 7; children = (Empty, Empty, Empty) },
        Node { value = 8; children = (Empty, Empty, Empty) },
        Node { value = 9; children = (Empty, Empty, Empty) }
      )}
    )
  };;

let tree2 =
  Node {
    value = 10;
    children = (
      Node { value = 11; children = (
        Node { value = 12; children = (Empty, Empty, Empty) },
        Empty,
        Node { value = 13; children = (Empty, Empty, Empty) }
      )},
      Node { value = 14; children = (Empty, Empty, Empty) },
      Node { value = 15; children = (
        Node { value = 16; children = (Empty, Empty, Empty) },
        Node { value = 17; children = (Empty, Empty, Empty) },
        Node { value = 18; children = (Empty, Empty, Empty) }
      )}
    )
  };;

let sumTree3 = combineTree3 (+);;

sumTree3 (tree1, tree2);;
sumTree3 (Empty, tree2);;
sumTree3 (Empty, Empty);;

let tree3 = 
  Node { 
    value = 1; 
    children = (
      Node { value = 2; children = (Empty, Empty, Empty) },
      Node { value = 3; children = (Empty, Empty, Empty) },
      Node { value = 4; children = (Empty, Empty, Empty) }
    ) 
  };;

let tree4 = 
  Node { 
    value = 10; 
    children = (
      Node { value = 5; children = (Empty, Empty, Empty) },
      Empty,
      Node { value = 6; children = (Empty, Empty, Empty) }
    ) 
  };;

sumTree3 (tree3, tree4);;
  

    