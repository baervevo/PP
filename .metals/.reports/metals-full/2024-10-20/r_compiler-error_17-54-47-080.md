file://<WORKSPACE>/CW/Lista_1/Z2.scala
### dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/LAB/Lab_1/Z3.scala
and also in
  <WORKSPACE>/CW/Lista_1/Z1.scala
One of these files should be removed from the classpath.

occurred in the presentation compiler.

presentation compiler configuration:
Scala version: 3.3.3
Classpath:
<HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.3.3/scala3-library_3-3.3.3.jar [exists ], <HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.12/scala-library-2.13.12.jar [exists ]
Options:



action parameters:
offset: 46
uri: file://<WORKSPACE>/CW/Lista_1/Z2.scala
text:
```scala
def count[A](x: A, xs: List[A]): Int = {
    i@@
        case Nil => 0
        case head :: tail => (if(head == x) 1 else 0) + count(x, tail)
    }
}

@main def main() = {
    val list = List(1, 2, 3, 1, 1, 2)
    println(count(1, list))
}
```



#### Error stacktrace:

```

```
#### Short summary: 

dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/LAB/Lab_1/Z3.scala
and also in
  <WORKSPACE>/CW/Lista_1/Z1.scala
One of these files should be removed from the classpath.