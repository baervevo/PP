def isComposite(n: Int): Boolean =
    if (n <= 1) then
        return false

    for (i <- List.range(2, (math.sqrt(n) + 1).toInt)) if (n % i == 0) return true

    false

def composed(n: Int): List[Int] =
    for (x <- List.range(0, n + 1) if isComposite(x)) yield x

@main def main() =
    println(composed(10))
    println(composed(0))
    println(composed(-5))
    println(composed(1))