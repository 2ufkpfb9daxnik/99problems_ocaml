(* remove_at : 'a list -> 'a list *)
let remove_at n l =
  let rec aux l n i =
    match l with
    | [] -> []
    | h :: t ->
      if n = i
        then aux t n (i + 1)
        else h :: aux t n (i + 1)
  in aux l n 0