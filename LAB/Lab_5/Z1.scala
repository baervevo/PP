import scala.collection.immutable.LazyList

sealed trait Lazy3Tree[+A]
case object Empty extends Lazy3Tree[Nothing]

case class Node[+A](value: A, l: Lazy3Tree[A], m: Lazy3Tree[A], r: Lazy3Tree[A]) extends Lazy3Tree[A]:
  lazy val left = l
  lazy val middle = m
  lazy val right = r

def order[A](value: A, l: Lazy3Tree[A], m: Lazy3Tree[A], r: Lazy3Tree[A]): (Lazy3Tree[A], Lazy3Tree[A], Lazy3Tree[A]) =
  (l, m, r)

def traverse[A](
  orderFun: (A, Lazy3Tree[A], Lazy3Tree[A], Lazy3Tree[A]) => (Lazy3Tree[A], Lazy3Tree[A], Lazy3Tree[A]),
  tree: Lazy3Tree[A]
): LazyList[A] = tree match
  case Empty => LazyList.empty
  case Node(value, l, m, r) =>
    val (nl, nm, nr) = orderFun(value, l, m, r)
    lazy val lTail = traverse(orderFun, nl)
    lazy val mTail = traverse(orderFun, nm)
    lazy val rTail = traverse(orderFun, nr)
    LazyList.cons(value, lTail #::: mTail #::: rTail)

def generateTree(n: Int): Lazy3Tree[Int] =
  def generateTreeHelper(value: Int, depth: Int): Lazy3Tree[Int] =
    if (depth == n) Empty
    else
      lazy val l = generateTreeHelper(value * 3 + 1, depth + 1)
      lazy val m = generateTreeHelper(value * 3 + 2, depth + 1)
      lazy val r = generateTreeHelper(value * 3 + 3, depth + 1)
      Node(value, l, m, r)

  generateTreeHelper(0, 0)

@main def main() =
  val tree = generateTree(3)
  val result = traverse(order, tree)

  println(result.toList)
