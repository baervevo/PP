def sqrList(xs: List[Int]): List[Int] = {
    if(xs.isEmpty) {
        List()
    } else {
        xs.head*xs.head :: sqrList(xs.tail)
    }
}

@main def main() = {
    val list = List(1, 2, 3)
    val squareList = (list: List[Int]) => list.map(x => x*x)
    println(sqrList(list))
    println(squareList(list))
}