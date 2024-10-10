def replicate[A](x: A, n: Int): List[A] = {
    n match {
        case 0 => List()
        case positive if positive > 0 => List(x) ++ replicate(x, positive-1)
        case other => null
    }
}

@main def main() = {
    val x = "la"
    println(replicate(x, 5))
}