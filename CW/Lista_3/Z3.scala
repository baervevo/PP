def insert[A](cmp: (A, A) => Boolean, x: A, list: List[A]): List[A] =
    list match
        case Nil => List(x)
        case y :: ys => if (cmp(x, y)) x :: list else y :: insert(cmp, x, ys)

def insertionSort[A](cmp: (A, A) => Boolean, list: List[A]): List[A] =
    list match
        case Nil => List()
        case h :: t => insert(cmp, h, insertionSort(cmp, t))

///////////////////////////////////////////////

def merge[A](cmp: (A, A) => Boolean, left: List[A], right: List[A]): List[A] =
    (left, right) match
        case (Nil, ys) => ys
        case (xs, Nil) => xs
        case (x :: xs, y :: ys) =>
            if (cmp(x, y)) x :: merge(cmp, xs, y :: ys)
            else y :: merge(cmp, x :: xs, ys)

def split[A](list: List[A]): (List[A], List[A]) =
    list match
        case Nil => (List(), List())
        case List(x) => (List(x), List())
        case x :: y :: zs =>
            val (left, right) = split(zs)
            (x :: left, y :: right)

def mergeSort[A](cmp: (A, A) => Boolean, list: List[A]): List[A] =
    list match
        case Nil => List()
        case List(x) => List(x)
        case xs =>
            val (left, right) = split(xs)
            merge(cmp, mergeSort(cmp, left), mergeSort(cmp, right))

@main def main() =
    val lst = List(5,7,4,2,56,87,123,65)
    println(mergeSort(((x: Int, y: Int) => x < y), lst))
    println(insertionSort(((x: Int, y: Int) => x < y), lst))
    println(split(List(1,2,3,4,5,6,7,8,9,10)))
