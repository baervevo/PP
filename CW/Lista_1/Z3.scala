def replicate[A](x: A, n: Int): List[A] = {
    if(n == 0) {
        List()
    } else if (n > 0) {
        x :: replicate(x, n - 1)
    } else {
        null;
    }
}

@main def main() = {
    val x = "la"
    println(replicate(x, 5))
}