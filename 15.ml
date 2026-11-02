(* replicate : 'a list int -> 'a list *)
let rec replicate l n =
  match l with
  | [] -> []
  | h :: t -> 
    (* 同じ要素hをn回繰り返し先頭にくっつける *)
    let rec aux h n =
      if n = 0
      then []
      else h :: aux h (n - 1)
    in aux h n @ replicate t n