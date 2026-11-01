(* compress : 'a list -> 'a list *)
let compress lst =
  match lst with
  | [] -> []
  | x :: xs -> x :: 
    let rec aux lst before =
    match lst with
    | [] -> []
    | x :: xs ->
      if x = before
      then aux lst x
      else x :: aux lst before
  in aux xs x