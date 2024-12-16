type 'a lazy3Tree =
  | Empty
  | Node of {value: 'a; children: 'a lazy3Tree Lazy.t * 'a lazy3Tree Lazy.t * 'a lazy3Tree Lazy.t};;

type 'a lazyList =
  | Nil
  | Cons of {hd: 'a; tl: (unit -> 'a lazyList)};;

let rec (@$) l1 l2 =
  match l1 with
  | Nil -> l2
  | Cons {hd = h; tl = t} ->
      Cons{hd = h; tl = fun () -> t() @$ l2};;

let order value l m r =
  (m, l, r);; (* Czysto przykładowa implementacja, tutaj może znaleźć się cokolwiek, o ile zwraca krotkę wartości wejściowych *)

let rec traverse orderFun tree =
  match tree with
  | Empty -> Nil
  | Node {value; children = (l, m, r)} ->
    let l', m', r' = orderFun value l m r in
    let lTail = lazy (traverse orderFun (Lazy.force l'))
    and mTail = lazy (traverse orderFun (Lazy.force m'))
    and rTail = lazy (traverse orderFun (Lazy.force r')) in
    Cons {
      hd = value;
      tl = fun () -> (Lazy.force lTail) @$ (Lazy.force mTail) @$ (Lazy.force rTail)
    };;

let generateTree n =
  let rec generateTreeHelper value depth =  
    match depth with
    | j when j >= n -> Empty
    | _ ->
        let l = lazy (generateTreeHelper (value * 3 + 1) (depth + 1))
        and m = lazy (generateTreeHelper (value * 3 + 2) (depth + 1))
        and r = lazy (generateTreeHelper (value * 3 + 3) (depth + 1)) in
        Node {
          value = value;
          children = (l, m, r)
        } in
  
  generateTreeHelper 0 0

let rec lazyToRegular lazyList =
  match lazyList with
  | Nil -> []
  | Cons {hd; tl} ->
    hd :: lazyToRegular (tl());;

let tree = generateTree 3;;
let result = traverse order tree;;

lazyToRegular result;;