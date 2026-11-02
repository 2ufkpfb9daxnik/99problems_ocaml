(* drop : 'a list -> int ->  'a list *)
let drop l n =
  let rec aux l n i =
    match l with
    | [] -> []
    | h :: t ->
      if n = i
        then aux t n (i + 1)
        else h :: aux t n (i + 1)
  in aux l n 1