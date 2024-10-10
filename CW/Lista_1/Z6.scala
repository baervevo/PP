def listLength[A](list : List[A]): Int = {
    list match{
        case Nil => 0
        case head :: next => 1 + listLength(next)
    }
}

@main def main() = {
    val list = List()
    println(listLength(list))
}