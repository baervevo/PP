sealed trait Tree3[+A]

case object Empty extends Tree3[Nothing]
case class Node[+A](value: A, l: Tree3[A], m: Tree3[A], r: Tree3[A]) extends Tree3[A]
