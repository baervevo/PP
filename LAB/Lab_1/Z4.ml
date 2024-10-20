exception IllegalArgument of string

let militaryMinutes (hours: int) (minutes: int) (timeOfDay: string) =
  let buildString = fun (h: int) (m: int) -> Printf.sprintf "%d:%d" h m in

  let amFunc (h: int) (m: int) =
    if h = 12 then
      buildString 0 m
    else
      buildString h m
  in

  let pmFunc (h: int) (m: int) =
    if h = 12 then
      buildString h m
    else
      buildString (h + 12) m
  in

  if minutes > 59 || minutes < 0 then
    failwith "Minutes must belong to interval [0;59]"
  else if hours > 12 || hours < 0 then
    failwith "Hours must belong to interval [0;12]"
  else
    if timeOfDay = "PM" then
      pmFunc hours minutes
    else if timeOfDay = "AM" then
      amFunc hours minutes
    else
      failwith "Time of day must be AM or PM"

let timeA = militaryMinutes 5 12 "PM";;
let timeB = militaryMinutes 12 59 "AM";;
let timeC = militaryMinutes 12 42 "PM";;

Printf.printf "%s, %s, %s" timeA timeB timeC;;

let timeD = militaryMinutes 12 60 "AM";;