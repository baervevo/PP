sealed trait Tree3[+A]

case object Empty extends Tree3[Nothing]
case class Node[+A](value: A, children: (Tree3[A], Tree3[A], Tree3[A])) extends Tree3[A]

val tree1 = Node(value = 1,
    children = (
        Node(value = 2,
        children = (
            Node(value = 3, children = (Empty, Empty, Empty)),
            Empty,
            Node(value = 4, children = (Empty, Empty, Empty))
        )),
        Node(value = 5, children = (Empty, Empty, Empty)),
        Node(value = 6,
        children = (
            Node(value = 7, children = (Empty, Empty, Empty)),
            Node(value = 8, children = (Empty, Empty, Empty)),
            Node(value = 9, children = (Empty, Empty, Empty))
        ))
    )
)

@main def main() =
    println(tree1)
