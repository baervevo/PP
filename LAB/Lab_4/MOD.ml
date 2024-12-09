type file = {name: string};;

type folder = {name: string; contents: disk_item list}
and disk_item = File of file | Folder of folder;;

type disk = {
  label: char;
  contents: disk_item list
};;

type disk_item_counts = {folders: int; files: int};;

let counts disk =
  let rec counts_helper front back record =
    match front with
    | [] ->
      if back = [] then record
      else counts_helper (List.rev back) [] record
    | File { name } :: tl ->
        counts_helper tl back {folders = record.folders ; files = record.files + 1}
    | Folder { name ; contents } :: tl ->
        counts_helper tl (List.rev_append contents back) {folders = record.folders + 1 ; files = record.files}

  and result = {folders = 0 ; files = 0} in
  counts_helper disk.contents [] result;;

let disk = {
  label = 'C';
  contents = [
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

counts disk;;
counts {label = 'T' ; contents = []}
