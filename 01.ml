(* last: 'a list -> 'a option *)
let rec last x = 
  match x with
  | [] -> None
  | [x] -> Some x
  | _ :: xs -> last xs