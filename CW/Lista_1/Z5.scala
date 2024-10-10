def palindrome[A](xs: List[A]): Boolean = {
    def palindromeRec(l: Int, r: Int): Boolean = {
        if(l >= r) true
        else if (xs(l) != xs(r)) false
        else palindromeRec(l + 1, r - 1)
    }

    palindromeRec(0, xs.length - 1)
}

@main def main() = {
    val list = List(1, 2, 3, 2, 1, 5)
    println(palindrome(list))
}