def listLength[A](list: List[A]): Int = 
    def listLengthHelper(list: List[A], len: Int): Int =
        list match
            case hd :: tl => listLengthHelper(tl, len + 1)
            case _ => len

    listLengthHelper(list, 0)

def split3Rec[A](list: List[A]): (List[A], List[A], List[A]) =
    val listLen = listLength(list)
    val segmentLength = listLen / 3

    def getNFirstElements(list: List[A], n: Int): (List[A], List[A]) =
        (n, list) match
            case (0, lst) => (List(), lst)
            case (i, hd :: tl) if i > 0 =>
                val (x, y) = getNFirstElements(tl, i - 1)
                (hd :: x, y)
            case _ => throw new IllegalArgumentException("N exceeds list length")

    val (seg1, tl1) = getNFirstElements(list, segmentLength)
    val (seg2, tl2) = getNFirstElements(tl1, segmentLength)
    val (seg3, tl3) = getNFirstElements(tl2, segmentLength)

    (seg1, seg2, seg3)

def split3Tail[A](list: List[A]): (List[A], List[A], List[A]) =
    def rev(list: List[A]): List[A] =
        def revHelper(list: List[A], revList: List[A]): List[A] =
            list match
                case Nil => revList
                case hd :: tl => revHelper(tl, hd :: revList)

        revHelper(list, List())

    val listLen = listLength(list)
    val segmentLength = listLen / 3
            
    def split3TailHelper(a: List[A], b: List[A], c: List[A], list: List[A], n: Int): (List[A], List[A], List[A]) =
        (n, list) match
            case (i, hd :: tl) if i <= segmentLength => split3TailHelper(hd :: a, b, c, tl, n + 1)
            case (i, hd :: tl) if i <= 2 * segmentLength => split3TailHelper(a, hd :: b, c, tl, n + 1)
            case (i, hd :: tl) if i <= 3 * segmentLength => split3TailHelper(a, b, hd :: c, tl, n + 1)
            case _ => (rev(a), rev(b), rev(c))

    split3TailHelper(List(), List(), List(), list, 1)

@main def main() = 
    println(split3Tail(List()))
    println(split3Rec(List()))
    println(split3Tail(List(1,2,3,4,5,6,7,8,9)))
    println(split3Rec(List(1,2,3,4,5,6,7,8,9)))
    println(split3Tail(List(1,2)))
    println(split3Rec(List(1,2)))
    println(split3Tail(List(1,2,3,4,5,6,7)))
    println(split3Rec(List(1,2,3,4,5,6,7)))