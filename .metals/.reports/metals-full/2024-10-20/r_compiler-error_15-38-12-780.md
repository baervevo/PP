file://<WORKSPACE>/LAB/Lab_1/Z4.scala
### java.lang.StringIndexOutOfBoundsException: Range [177, 171) out of bounds for length 693

occurred in the presentation compiler.

presentation compiler configuration:
Scala version: 3.3.3
Classpath:
<HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.3.3/scala3-library_3-3.3.3.jar [exists ], <HOME>/.cache/coursier/v1/https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.12/scala-library-2.13.12.jar [exists ]
Options:



action parameters:
offset: 171
uri: file://<WORKSPACE>/LAB/Lab_1/Z4.scala
text:
```scala
def militaryMinutes(hours: Int, minutes: Int, timeOfDay: String): String  = {
    val amFunc = (h: Int, m: Int) => h + 12 + ":" + m;
    val pmFunc = (h: Int, m: Int) => h@@+ ":" + m;

    if (minutes > 59 || minutes < 0) {
        throw new IllegalArgumentException("Minutes should be between 0 and 59.");
    }

    if (hours < 0) {
        throw new IllegalArgumentException("Hours cannot be negative.");
    }

    if (timeOfDay == "PM") {
        hour = hours + 12;
    } else if (timeOfDay == "AM") {
        hour = hours;
    } else {
        throw new IllegalArgumentException("Time of day should be AM or PM.");
    }
}

@main def main() = {
    println(militaryMinutes(5, 12, "PM"));
}
```



#### Error stacktrace:

```
java.base/jdk.internal.util.Preconditions$1.apply(Preconditions.java:55)
	java.base/jdk.internal.util.Preconditions$1.apply(Preconditions.java:52)
	java.base/jdk.internal.util.Preconditions$4.apply(Preconditions.java:213)
	java.base/jdk.internal.util.Preconditions$4.apply(Preconditions.java:210)
	java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:98)
	java.base/jdk.internal.util.Preconditions.outOfBoundsCheckFromToIndex(Preconditions.java:112)
	java.base/jdk.internal.util.Preconditions.checkFromToIndex(Preconditions.java:349)
	java.base/java.lang.String.checkBoundsBeginEnd(String.java:4914)
	java.base/java.lang.String.substring(String.java:2876)
	scala.meta.internal.pc.completions.CompletionPos$.infer(CompletionPos.scala:57)
	scala.meta.internal.pc.completions.CompletionPos$.infer(CompletionPos.scala:47)
	scala.meta.internal.pc.completions.CompletionProvider.completions(CompletionProvider.scala:66)
	scala.meta.internal.pc.ScalaPresentationCompiler.complete$$anonfun$1(ScalaPresentationCompiler.scala:155)
```
#### Short summary: 

java.lang.StringIndexOutOfBoundsException: Range [177, 171) out of bounds for length 693