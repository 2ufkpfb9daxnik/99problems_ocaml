(* length : 'a list -> int *)
let rec length list =
  match list with
  | [] -> 0
  | _ :: x -> 1 + length x