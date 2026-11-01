type 'a node =
| One of 'a
| Many of 'a node list

(* flatten : 'a node list -> 'a list *)
let rec flatten lst =
  match lst with
  | [] -> []
  | One (a) :: tl -> a :: flatten tl
  | Many (a) :: tl -> flatten a @ flatten tl
