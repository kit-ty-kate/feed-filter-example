open Syndic

let filter x = CCString.find ~sub:"commented on" x < 0

let get_title (x : Atom.text_construct) = match x with
  | Atom.Text x -> x
  | Atom.Html (_, x) -> x
  | Atom.Xhtml _ -> failwith "xhtml :("

let filter_aux (x : Atom.entry) =
  filter (get_title x.Atom.title)

let () =
  let atom = Xmlm.make_input (`Channel stdin) in
  let atom = Atom.parse atom in
  let entries = List.filter filter_aux atom.Atom.entries in
  let atom = {atom with Atom.entries} in
  let atom = Atom.to_xml atom in
  print_endline (XML.to_string ~ns_prefix:(fun _ -> Some "") atom)
