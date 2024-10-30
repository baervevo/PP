let root3 a =
  let rec root3Helper res =
    if abs_float (res**3.0 -. a) <= 1e-15 *. abs_float a then
      res
    else
      root3Helper (res +. ((a /. (res**2.0)) -. res) /. 3.0)
    in

    root3Helper (if a > 1.0 then a /. 3.0 else a)
  ;;