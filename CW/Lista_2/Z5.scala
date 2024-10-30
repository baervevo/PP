def initSegment[A](x: List[A], y: List[A]): Boolean =
    (x, y) match
        case (Nil, _) => true
        case (head :: tail, Nil) => false
        case (headA :: tailA, headB :: tailB) if headA == headB => initSegment(tailA, tailB) 
        case _ => false

@main def main() =
    println(initSegment(List(), List()))
    println(initSegment(List(), List(1, 2, 3)))
    println(initSegment(List(1, 2), List(1, 2, 3)))
    println(initSegment(List(1, 2), List(1, 3, 2)))
    println(initSegment(List(1, 2), List()))
    