let rev list =
  let rec aux acc list =
    match list with
    | [] -> acc
    | x :: xs -> (* accに貯める *)
      let acc = x :: acc in
        aux acc xs
  in aux [] list

(* is_palindrome: 'a list -> true *)
let is_palindrome list =
  list = rev list
