(* pack :  'a list -> 'a list list *)
let pack l =
  (* 一度分解して、accの中身が必ず存在する状況を作り出す *)
  match l with
  | [] -> []
  | h :: t ->
    let rec aux l acc acc_head =
      (* accの中身は存在するので、順番に進めていこう *)
      match l with
      | [] -> [acc] (* 先頭のaccだけが存在した、あるいは最後にaccだけが残った *)
      | h :: t -> (* まだまだその先がある *)
          if h = acc_head (* accの先頭要素と今回の分解の先頭が等しい *)
          then aux t (h :: acc) h (* ならそのまま続ける *)
          else acc :: aux t [h] h  (* 違えば、accは完成。新しいhを先頭とするaccを返す *)
    in aux t [h] h