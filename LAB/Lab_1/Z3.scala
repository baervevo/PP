def insert[A](list: List[A], value: A, index: Int): List[A] = {
    if (index <= 0) then
        value :: list;
    else
        if(list == List()) then
            List(value)
        else
            list.head :: insert(list.tail, value, index - 1)
}

@main def main() = {
    val lst = List(1, 2, 4);
    println(insert(lst, 3, 2));
    println(insert(lst, 3, 99999999));
    println(insert(lst, 3, -99999999));

    val lst2 = List();
    println(insert(lst2, 99, 8909809))
}
