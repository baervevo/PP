
sealed trait DiskItem
case class File(name: String) extends DiskItem
case class Folder(name: String, contents: List[DiskItem]) extends DiskItem

case class Disk(label: Char, contents: List[DiskItem])

val disk = Disk(
  label = 'C',
  contents = List(
    File("config.txt"),
    Folder(
      name = "Documents",
      contents = List(
        Folder(
          name = "Paradygmaty Programowania",
          contents = List(
            Folder(
              name = "CW",
              contents = List(File("Z1.ml"))
            ),
            Folder(
              name = "LAB",
              contents = List(File("Z1.ml"))
            )
          )
        ),
        File("config.txt")
      )
    )
  )
)

@main def main() =
    println(disk)