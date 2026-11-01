type 'a rle =
| One of 'a
| Many of int * 'a

(* decode : 'a rle list -> 'a list *)
let rec decode l =
  match l with
  | [] -> []
  | h :: t ->
    let rec aux l i =
      match l with
      | One (elem) -> elem :: aux t (i - 1)
      | Many (count, elem) -> elem :: aux t (i - 1)
    in aux l 1