// def root3(a: Double): Double =
//     def root3Helper(res: Double): Double =
//         if Math.abs(Math.pow(res, 3) - a) <= 1.0e-15 * Math.abs(a) then
//             res
//         else
//             root3Helper(res + ((a / (Math.pow(res, 2))) - res) / 3.0)
    
//     root3Helper(if a > 1 then a / 3.0 else a)

val root3Helper: (Double, Double) => Double = (a, res) => if Math.abs(Math.pow(res, 3) - a) <= 1.0e-15 * Math.abs(a) then res else root3Helper(a, res + ((a / (Math.pow(res, 2))) - res) / 3.0)
val root3: Double => Double = (a) => root3Helper(a, if a > 1 then a / 3.0 else a)

@main def main() =
    println(root3(1331))