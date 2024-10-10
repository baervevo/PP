def sqrList(xs: List[Int]): List[Int] = {
    xs match {
        case Nil => Nil
        case head :: next => List(head*head) ++ sqrList(next)
    }
}

@main def main() = {
    val list = List(1, 2, 3)
    val squareList = (list: List[Int]) => list.map(x => x*x)
    println(sqrList(list))
    println(squareList(list))
}