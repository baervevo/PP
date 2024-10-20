def count[A](x: A, xs: List[A]): Int = {
    if(xs.isEmpty){
        0
    } else {
        (if(xs.head == x) 1 else 0) + count(x, xs.tail)
    }
}

@main def main() = {
    val list = List(1, 2, 3, 1, 1, 2)
    println(count(1, list))
}