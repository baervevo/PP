def split2(list: List[Double], a: Double, b: Double): (List[Double], List[Double]) = {
    if(list == List()) then
        (List(), List())
    else
        val head = list.head
        val tail = list.tail

        val ret = split2(tail, a, b)

        if(head <= a && head >= b) then
            (head :: ret._1, head :: ret._2)
        else
            if(head <= a) then
                (head :: ret._1, ret._2)
            else if(head >= b) then
                (ret._1, head :: ret._2)
            else
                ret
}

@main def main() = {
    val list = List(5.0, 4.0, 3.0, 2.0, 3.0, 5.0)
    println(split2(list, 3, 4))

    val list2 = List()
    println(split2(list2, 4, 3))

    val list3 = List(5.0, 4.0, 3.0, 2.0, 3.0, 5.0)
    println(split2(list3, 99999, -99999))
}
