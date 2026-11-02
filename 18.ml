(* slice : 'a list -> int -> int -> 'a list *)
let slice l i k =
  let distance = k - i in
  let rec ignore_first l n i =
    match l with
    | [] -> []
    | h :: t ->
      if i < n
        then ignore_first t n (i + 1)
        else t
  in
  let rec ignore_last l n i =
    match l with
    | [] -> []
    | h :: t ->
      if n < i
        then []
        else h :: ignore_last t n (i + 1)
  in
  ignore_last (ignore_first l i 1) distance 0