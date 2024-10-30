def fib(n: Int): Int =
    n match
        case 0 => 0
        case 1 => 1
        case n: Int => fib(n - 2) + fib(n - 1)

def fibTail(n: Int): Int =
    def fibTailHelper(i: Int, x: Int, y: Int): Int =
        i match
            case 0 => x
            case _: Int => fibTailHelper(i - 1, y, x + y)

    fibTailHelper(n, 0, 1)
        

@main def main() =
    println(fib(42))