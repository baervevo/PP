import scala.collection.immutable.LazyList

def skipTakeL[A](list: LazyList[A]): LazyList[A] =
    def skipTakeLHelper[A](list: LazyList[A], i: Int, j: Int): LazyList[A] =
        list match
            case LazyList() => LazyList.empty
            case head #:: tail =>
                (i, j) match
                    case (0, _) =>
                        LazyList.cons(head, skipTakeLHelper(tail, j, j + 1))
                    case _ =>
                        skipTakeLHelper(tail, i - 1, j)
    skipTakeLHelper(list, 0, 1)

@main def main() =
    val list = LazyList.from(1)
    println(skipTakeL(list).take(20).toList)

