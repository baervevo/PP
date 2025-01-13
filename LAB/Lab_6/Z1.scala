def pascalRowI(prev: Array[Int]): Array[Int] =
  val n = prev.length
  val result = Array.fill(n + 1)(1)
  for i <- 0 until (n - 1) do
    result(i + 1) = prev(i) + prev(i + 1)
  result

def pascalTriangleI(n: Int): Array[Array[Int]] =
  val result = Array.fill(n)(Array(1))
  for i <- 0 until (n - 1) do
    val revIdx = n - i - 1
    result(revIdx - 1) = pascalRowI(result(revIdx))
  result

def pascalGiftI(n: Int, k: Int): Array[Int] =
  val triangle = pascalTriangleI(n)
  val revIdx = math.abs((n - 1) - k)
  var prefix = Array[Int]()
  var revPrefix = Array[Int]()
  var i = revIdx + 2
  var j = 1
  while i < n do
    val row = triangle(n - i - 1)
    val value = Array(row(j))
    prefix = value ++ prefix
    i += 2
    j += 1

  prefix ++ triangle(n - revIdx - 1) ++ prefix.reverse

@main def main() =
    for i <- 0 until 9 do
        println(pascalGiftI(5, i).mkString(", "))

