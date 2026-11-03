(* insert_at 'a -> int -> 'a ilst -> 'a list *)
let insert_at x n l =
  let rec aux x n l i =
    match l with
    | [] -> []
    | h :: t ->
      if n = i
        then h :: x :: t
        else h :: aux x n t (i + 1)
  in aux x n l 1