type file = {name: string};;

type folder = {name: string; contents: disk_item list}
and disk_item = File of file | Folder of folder;;

type disk = {
  label: char;
  contents: disk_item list
};;

let path disk asset =
  let rec pathHelper queue =
    match queue with
    | [] -> None
    | (File {name}, curr_path) :: tl ->
        if name = asset then Some (name :: curr_path)
        else pathHelper tl
    | (Folder {name; contents}, curr_path) :: tl ->
        if name = asset then Some (name :: curr_path)
        else pathHelper (tl @ (List.map (fun x -> (x, name :: curr_path)) contents))
  in

  match pathHelper (List.map (fun x -> (x, [])) disk.contents) with
  | None -> None
  | Some path -> Some ((String.make 1 disk.label) ^ ":" ^ (List.fold_right (fun acc x -> x ^ "/" ^ acc) path ""));;

let disk = {
  label = 'C';
  contents = [
    File {name = "config.txt"};
    Folder {
      name = "Documents";
      contents = [
        Folder {
          name = "Paradygmaty Programowania";
          contents = [
            Folder {
              name = "CW";
              contents = [
                File {name = "Z1.ml"}
              ]
            };
            Folder {
              name = "LAB";
              contents = [
                File {name = "Z1.ml"}
              ]
            }
          ]
        };
        File {name = "config.txt"}
      ]
    }
  ]
};;

path disk "config.txt";;
path disk "Z1.ml";;
path disk "tenpliknieistnieje.yaml";;
