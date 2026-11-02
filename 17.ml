(* split : 'a list -> int -> ('a list * 'a list) *)
let split l n =
  (* 1番目からn番目のリストをとってくる *)
  (* first : 'a list -> int -> int -> 'a list *)
  let rec first l n i =
    if i = n
      then []
      else
        match l with
        | [] -> []
        | h :: t ->
          h :: first t n (i + 1)
  in
  (* n + 1番目からリストの最後までをとってくる *)
  (* second : 'a list -> int -> int -> 'a list *)
  let rec second l n i =
    if i <= n
      then
        match l with
        | [] -> []
        | h :: t ->
          second t n (i + 1)
      else l
  in
  (first l n 0 , second l n 0)