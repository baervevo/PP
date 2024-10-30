def replaceNth[A](list: List[A], n: Int, v: A): List[A] =
    (n, list) match
        case (0, _ :: tl) => v :: tl
        case (i, _) if i < 0 => throw new IllegalArgumentException("Index negative")
        case (_, Nil) => throw new IllegalArgumentException("Index exceeds list length")
        case (i, hd :: tl) => hd :: replaceNth(tl, n - 1, v)

@main def main() =
    println(replaceNth(List(0,1,2,3,4), 3, 9999))
    println(replaceNth(List(0), 0, 9999))

    println(replaceNth(List(), 3, 9999))
    println(replaceNth(List(0,1,2,3,4), -3, 9999))
    