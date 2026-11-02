(* split : 'a list -> int -> ('a list * 'a list) *)
let split l n =
  let len = List.length l in
  (* リスト、開始index、長さを受け取ってスライスを返す *)
  let rec aux l i n =
    match l with
    | [] -> []
    | h :: t ->
      if i < n
        then []
        else aux l i n