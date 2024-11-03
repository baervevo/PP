def indexSwap[A](i: Int, j: Int)(list: List[A]): List[A] = 
    def swapIndicesHelper(j: Int, list: List[A], v: A): (A, List[A]) =
        (j, list) match
            case (0, hd :: tl) => (hd, v :: tl)
            case (_, hd :: tl) =>
                val (x, y) = swapIndicesHelper(j - 1, tl, v)
                (x, hd :: y)
            case _ => (v, Nil)
    
    def swapIndices(i: Int, j: Int, list: List[A]): List[A] =
        (i, j, list) match
            case (0, _, hd :: tl) =>
                val (x, y) = swapIndicesHelper(j - 1, tl, hd)
                x :: y
            case (_, 0, hd :: tl) =>
                val (x, y) = swapIndicesHelper(i - 1, tl, hd)
                x :: y
            case (_, _, hd :: tl) => hd :: swapIndices(i - 1, j - 1, tl)
            case _ => list

    swapIndices(i, j, list) 

@main def main() =
    val list = List(0,1,2,3,4,5)

    val indexSwap15 = indexSwap(1, 5)
    val indexSwap51 = indexSwap(5, 1)
    val indexSwap9999 = indexSwap(99, 99)
    val indexSwap099 = indexSwap(0, 99)

    println(indexSwap15(list))
    println(indexSwap15(List(5,4,3,2,1,0)))
    println(indexSwap51(list))
    println(indexSwap9999(list))
    println(indexSwap099(list))
        