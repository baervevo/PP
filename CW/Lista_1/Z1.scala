def flatten1[A](xss: List[List[A]]): List[A] = {
    xss match {
        case Nil => Nil
        case head :: next => head ++ flatten1(next)
    }    
}

@main def main() = {
    val listOfLists = List(List(5, 6), List(1, 2, 3))
    println(flatten1(listOfLists))