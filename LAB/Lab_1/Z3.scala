def insert[A](list: List[A], value: A, index: Int): List[A] = {
    if (index <= 0) {
        value :: list;
    } else {
        if(list.isEmpty) {
            List(value);
        } else {
            list.head :: insert(list.tail, value, index - 1);
        }
    }
}

@main def main() = {
    val lst = List(1, 2, 4);
    println(insert(lst, 4, 3));
    println(insert(lst, 4, 99999999));
    println(insert(lst, 4, -99999999));
}
