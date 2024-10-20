file://<WORKSPACE>/CW/Lista_1/Z1.scala
### dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/LAB/Lab_1/Z2.scala
and also in
  <WORKSPACE>/LAB/Lab_1/Z3.scala
One of these files should be removed from the classpath.

occurred in the presentation compiler.

presentation compiler configuration:
Scala version: 3.3.3
Classpath:
<HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.3.3/scala3-library_3-3.3.3.jar [exists ], <HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.12/scala-library-2.13.12.jar [exists ]
Options:



action parameters:
offset: 54
uri: file://<WORKSPACE>/CW/Lista_1/Z1.scala
text:
```scala
def flatten1[A](xss: List[List[A]]): List[A] = {
    i@@
        case Nil => Nil
        case head :: next => head ++ flatten1(next)
    }    
}

@main def main() = {
    val listOfLists = List(List(5, 6), List(1, 2, 3))
    println(flatten1(listOfLists))
}
```



#### Error stacktrace:

```

```
#### Short summary: 

dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/LAB/Lab_1/Z2.scala
and also in
  <WORKSPACE>/LAB/Lab_1/Z3.scala
One of these files should be removed from the classpath.