def fiddle4(tuple: (Double, Double, Double, Double)): (Double, Double, Double) = {
    (tuple._4, tuple._1, tuple._3 - tuple._2);
}

@main def main() = {
    val tuple = (1.3, 2.0, 3.1, 4.2);
    println(fiddle4(tuple));
}