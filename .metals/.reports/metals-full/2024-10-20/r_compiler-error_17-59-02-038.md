file://<WORKSPACE>/CW/Lista_1/Z6.scala
### dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/CW/Lista_1/Z4.scala
and also in
  <WORKSPACE>/CW/Lista_1/Z5.scala
One of these files should be removed from the classpath.

occurred in the presentation compiler.

presentation compiler configuration:
Scala version: 3.3.3
Classpath:
<HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.3.3/scala3-library_3-3.3.3.jar [exists ], <HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.12/scala-library-2.13.12.jar [exists ]
Options:



action parameters:
offset: 48
uri: file://<WORKSPACE>/CW/Lista_1/Z6.scala
text:
```scala
def listLength[A](list : List[A]): Int = {
    i@@
        case Nil => 0
        case head :: next => 1 + listLength(next)
    }
}

@main def main() = {
    val list = List()
    println(listLength(list))
}
```



#### Error stacktrace:

```

```
#### Short summary: 

dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/CW/Lista_1/Z4.scala
and also in
  <WORKSPACE>/CW/Lista_1/Z5.scala
One of these files should be removed from the classpath.