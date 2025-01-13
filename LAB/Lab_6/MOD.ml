let sndMax list =
  let n = Array.length list in
  let max = ref (if n > 0 then list.(0) else 0) in
  let snd = ref 0 in
  let i = ref 1 in
  if n < 2 then
    failwith "Array must be longer than 1 element";
  while !i < Array.length list do
    let el = list.(!i) in
    if el >= !max then begin
      snd := !max;
      max := el;
    end else if el > !snd && el < !max then
      snd := el;
    i := !i + 1;
  done;
  !snd;;

sndMax [|6;5;3|];;
sndMax [|6;6;5;3|];;
sndMax [|5;3;5;3;3;3|];;
sndMax [|5;5|];;
sndMax [|1;2;3;4;5;6;7;8;9|];;
sndMax [|9;1;2;3;4;5;6;7;8;9|];;
sndMax [||];;