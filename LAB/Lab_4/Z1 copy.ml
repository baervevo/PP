type 'a tree3 =
  | Empty of {value: 'a}
  | Tree1 of {value: 'a; m : 'a tree3}
  | Tree2 of {value: 'a; l: 'a tree3; r: 'a tree3}
  | Tree3 of {value: 'a; l: 'a tree3; m: 'a tree3; r: 'a tree3};;

let rec combineTree3 f = function
  | Tree1 {value = v1 ; m = m1}, Tree1 {value = v2 ; m = m2} ->
      Tree1 {value = f v1 v2 ; m = combineTree3 f (m1, m2)}
  | Tree2 {value = v1 ; l = l1 ; r = r1}, Tree2 {value = v2 ; l = l2 ; r = r2} ->
      Tree2 {value = f v1 v2 ; l = combineTree3 f (l1, l2) ; r = combineTree3 f (r1, r2)}
  | Tree3 {value = v1 ; l = l1 ; m = m1 ; r = r1}, Tree3 {value = v2 ; l = l2 ; m = m2 ; r = r2} ->
      Tree3 {value = f v1 v2 ; l = combineTree3 f (l1, l2) ; m = combineTree3 f (m1, m2) ; r = combineTree3 f (r1, r2)}
  | Tree3 {value = v1 ; l = l1 ; m = m1 ; r = r1}, Tree2 {value = v2 ; l = l2 ; r = r2} ->
      Tree2 {value = f v1 v2 ; l = combineTree3 f (l1, l2) ; r = combineTree3 f (r1, r2)}
  | Tree2 {value = v1 ; l = l1 ; r = r1}, Tree3 {value = v2 ; l = l2 ; m = m2 ; r = r2} ->
      Tree2 {value = f v1 v2 ; l = combineTree3 f (l1, l2) ; r = combineTree3 f (r1, r2)}
  | Tree3 {value = v1 ; l = l1 ; m = m1 ; r = r1}, Tree1 {value = v2 ; m = m2} ->
      Tree1 {value = f v1 v2 ; m = combineTree3 f (l1, m2)}
  | Tree1 {value = v1 ; m = m1}, Tree3 {value = v2 ; l = l2 ; m = m2 ; r = r2} ->
      Tree1 {value = f v1 v2 ; m = combineTree3 f (m1, l2)}
  | Tree2 {value = v1 ; l = l1 ; r = r1}, Tree1 {value = v2 ; m = m2} ->
      Tree1 {value = f v1 v2 ; m = combineTree3 f (l1, m2)}
  | Tree1 {value = v1 ; m = m1}, Tree2 {value = v2 ; l = l2 ; r = r2} ->
      Tree1 {value = f v1 v2 ; m = combineTree3 f (m1, l2)}
  | Tree1 {value = v1 ; m = m1}, Empty {value = v2} -> Empty {value = f v1 v2}
  | Tree2 {value = v1 ; l = l1 ; r = r1}, Empty {value = v2} -> Empty {value = f v1 v2}
  | Tree3 {value = v1 ; l = l1 ; m = m1 ; r = r1}, Empty {value = v2} -> Empty {value = f v1 v2}
  | Empty {value = v1}, Tree1 {value = v2 ; m = m2} -> Empty {value = f v1 v2}
  | Empty {value = v1}, Tree2 {value = v2 ; l = l2 ; r = r2} -> Empty {value = f v1 v2}
  | Empty {value = v1}, Tree3 {value = v2 ; l = l2 ; m = m2 ; r = r2} -> Empty {value = f v1 v2}

let sumTree3 = combineTree3 (+);;

let tree1 = 
  Tree3 { 
    value = 1; 
    l = Empty { value = 2 };
    m = Empty { value = 3 };
    r =  Empty { value = 4 }
  };;

let tree2 = 
  Tree2 { 
    value = 10; 
    l = Empty { value = 5 };
    r =  Empty { value = 6 }
  };;

sumTree3 (tree1, tree2);;
sumTree3 (Empty, tree2);;
sumTree3 (Empty, Empty);;
  

    