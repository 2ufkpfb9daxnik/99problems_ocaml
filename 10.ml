(* encode : 'a list -> (int * 'a) list *)
let encode l =
  (* 一度分解して、now_elemの中身が必ず存在する状況を作り出す *)
  match l with
  | [] -> []
  | h :: t ->
    let rec aux l now_elem count =
      match l with
      | [] -> [(count, now_elem)] (* 中身がなくなったら(それは最後！なぜならnow_elemの中身が必ず存在する状況作り出したので)最後のcountとnow_elemをくっつける *)
      | h :: t ->
        if now_elem = h (* もし分解した先頭要素が今の先頭要素と等しい *)
        then aux t now_elem (count + 1) (* ならばcountを+1して、次に進む *)
        else (count, now_elem) :: aux t h 1 (* 違えば、そこで長さが決定される。 *)
    in aux t h 1