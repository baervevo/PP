file://<WORKSPACE>/LAB/Lab_1/Z3.scala
### dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/LAB/Lab_1/Z2.scala
and also in
  <WORKSPACE>/LAB/Lab_1/Z4.scala
One of these files should be removed from the classpath.

occurred in the presentation compiler.

presentation compiler configuration:
Scala version: 3.3.3
Classpath:
<HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.3.3/scala3-library_3-3.3.3.jar [exists ], <HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.12/scala-library-2.13.12.jar [exists ]
Options:



action parameters:
offset: 150
uri: file://<WORKSPACE>/LAB/Lab_1/Z3.scala
text:
```scala
def insert[A](list: List[A], value: A, index: Int): List[A] = {
    if (index <= 0) {
        value :: list;
    } else {
        if(list == List()) t@@
            List(value);
        } else {
            list.head :: insert(list.tail, value, index - 1);
        }
    }
}

@main def main() = {
    val lst = List(1, 2, 4);
    println(insert(lst, 3, 2));
    println(insert(lst, 3, 99999999));
    println(insert(lst, 3, -99999999));

    val lst2 = List();
}

```



#### Error stacktrace:

```

```
#### Short summary: 

dotty.tools.dotc.core.TypeError$$anon$1: Toplevel definition main is defined in
  <WORKSPACE>/LAB/Lab_1/Z2.scala
and also in
  <WORKSPACE>/LAB/Lab_1/Z4.scala
One of these files should be removed from the classpath.