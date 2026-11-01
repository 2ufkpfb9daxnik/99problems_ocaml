(* at: 'a list -> string option *)
(* もしn番目のindexに要素があるならその要素を返す *)
let at n list =
  let rec aux idx n list =
    match list with
    | [] -> None
    | head :: tail ->
      if idx = n
      then Some head
      else (aux (idx + 1) n tail)
  in aux 1 n list