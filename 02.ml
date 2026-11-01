(* last_two: 'a list -> (string * string) option *)
let rec last_two x =
  match x with
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: x -> last_two x