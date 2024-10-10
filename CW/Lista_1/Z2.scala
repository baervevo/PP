def count[A](x: A, xs: List[A]): Int = {
    xs match {
        case Nil => 0
        case head :: tail => (if(head == x) 1 else 0) + count(x, tail)
    }
}

@main def main() = {
    val list = List(1, 2, 3, 1, 1, 2)
    println(count(1, list))
}