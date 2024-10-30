def flatten1[A](xss: List[List[A]]): List[A] = {
    if(xss.isEmpty) then
        List()
    else
        xss.head ::: flatten1(xss.tail)
}

@main def main() = {
    val listOfLists = List(List(5, 6), List(1, 2, 3))
    println(flatten1(listOfLists))
}