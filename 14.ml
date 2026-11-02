(* duplicate : 'a list -> 'a list *)
let rec duplicate l =
  match l with
  | [] -> []
  | h :: t -> h :: h :: duplicate t