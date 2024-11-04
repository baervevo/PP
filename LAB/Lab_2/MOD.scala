def inversionAB[A](list: List[A], a: Int, b: Int): List[A] =
    def reverseNFirstElementsTail(list: List[A], n: Int, rev: List[A]): (List[A], List[A]) =
        (n, list) match
            case (i, hd :: tl) if i > 0 => reverseNFirstElementsTail(tl, n - 1, hd :: rev)
            case _ => (rev, list)

    def inversionABHelper(list: List[A], a: Int, b: Int): List[A] =
        (a, b, list) match
            case (i, j, lst) if i <= 0 =>
                val ret = reverseNFirstElementsTail(lst, j - Math.max(i, 0) + 1, List())
                ret._1 ::: ret._2
            case (i, j, hd :: tl) =>
                hd :: inversionABHelper(tl, i - 1, j - 1)
            case _ => list

    if a > b then
        inversionABHelper(list, b, a)
    else
        inversionABHelper(list, a, b)

@main def main() = 
    val list = List(1,2,3,4,5,6,7,8,9)

    println(inversionAB(list, -5050, 5050))
    println(inversionAB(list, -5050, 4))
    println(inversionAB(list, 2, 4))
    println(inversionAB(list, 4, 2))

    println(inversionAB(List(), 5, 6))