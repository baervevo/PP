type 'a lazylist = Nil | Cons of 'a * 'a lazylist Lazy.t;;

let rec toLazyList = function
 [] -> Nil
 | x :: xs -> Cons(x, lazy (toLazyList xs));;

let rec lazyToRegular = function
  | Nil -> []
  | Cons(hd, tl) ->
    hd :: lazyToRegular (Lazy.force tl);;

let lrepeat k lst =
  let rec lrepeatHelper i lst =
    match lst with
    | Nil -> Nil
    | Cons(hd, tl) ->
      match i with
      | 0 -> lrepeatHelper k (Lazy.force tl)
      | _ -> Cons(hd, lazy (lrepeatHelper (i - 1) lst))
  in

  lrepeatHelper k lst;;