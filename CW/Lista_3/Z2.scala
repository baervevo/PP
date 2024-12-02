def sumProd(xs: List[Int]): (Int, Int) =
    (xs.foldLeft(0)((acc: Int, x: Int) => acc + x), xs.foldLeft(1)((acc: Int, x: Int) => acc * x))

@main def main() =
    val list = List(1,2,3,4,5)
    println(sumProd((list)))