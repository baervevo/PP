def listLength[A](list : List[A]): Int = {
    if(list.isEmpty) {
        0
    } else {
        1 + listLength(list.tail)
    }
}

@main def main() = {
    val list = List()
    println(listLength(list))
}