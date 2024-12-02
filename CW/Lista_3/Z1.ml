let curry3 f = fun a -> fun b -> fun c -> f (a, b, c);;
let uncurry3 f = fun (a, b, c) -> ((f a) b) c;;