def curry3[A, B, C, D](f: (A, B, C) => D): A => B => C => D =
    a => b => c => f(a, b, c)

def uncurry3[A, B, C, D](f: A => B => C => D): (A, B, C) => D =
    (a, b, c) => f(a)(b)(c)

@main def main() =
    val multiply = (x: Int, y: Int, z: Int) => x * y * z

    val multiplyCurried = curry3(multiply)
    val multiplyUncurried = uncurry3(multiplyCurried)

    println(multiplyCurried(1)(2)(3))
    println(multiplyUncurried(1,2,3))

