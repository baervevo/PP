file://<WORKSPACE>/CW/Lista_1/Z4.scala
### dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/CW/Lista_1/Z2.scala
and also in
  <WORKSPACE>/CW/Lista_1/Z3.scala
One of these files should be removed from the classpath.

occurred in the presentation compiler.

presentation compiler configuration:
Scala version: 3.3.3
Classpath:
<HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.3.3/scala3-library_3-3.3.3.jar [exists ], <HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.12/scala-library-2.13.12.jar [exists ]
Options:



action parameters:
offset: 47
uri: file://<WORKSPACE>/CW/Lista_1/Z4.scala
text:
```scala
def sqrList(xs: List[Int]): List[Int] = {
    i@@
        case Nil => Nil
        case head :: next => List(head*head) ++ sqrList(next)
    }
}

@main def main() = {
    val list = List(1, 2, 3)
    val squareList = (list: List[Int]) => list.map(x => x*x)
    println(sqrList(list))
    println(squareList(list))
}
```



#### Error stacktrace:

```

```
#### Short summary: 

dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/CW/Lista_1/Z2.scala
and also in
  <WORKSPACE>/CW/Lista_1/Z3.scala
One of these files should be removed from the classpath.