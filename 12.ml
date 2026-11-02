type 'a rle =
| One of 'a
| Many of int * 'a

(* decode : 'a rle list -> 'a list *)
let rec decode l =
  match l with
  | [] -> []
  | h :: t ->
    match h with
    | One elem -> elem :: decode t
    | Many (count, elem) ->
      let rec aux count elem =
        if count = 0
        then []
        else elem :: aux (count - 1) elem
      in aux count elem @ decode t
