def hits[A](listA: List[A], listB: List[A]): Int = {
    if(listA.isEmpty || listB.isEmpty) {
        0
    } else {
        if (listA.head == listB.head) {
            1 + hits(listA.tail, listB.tail);
        } else {
            hits(listA.tail, listB.tail);
        }
    }
}

@main def main() = {
    val listA = List(3, 2, 1);
    val listB = List(1, 2, 3);

    println(hits(listA, listB));

    val listC = List(3, 2, 1);
    val listD = List(1, 2, 1, 0, 0, 0, 0);

    println(hits(listC, listD));

    val listE = List();
    val listF = List(1, 2, 1, 0, 0, 0, 0);

    println(hits(listE, listF));
}