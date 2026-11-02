(* 英語が読まれへんねんけど、10とかと違うわけ?という状態なので、とりあえずai *)
(* 11が、本来の想定では10とか9の結果を使う想定だったらしい。はじめから英語が読めなくてそのままやったのでこれで別に普通にいいですかね *)

type 'a rle =
| One of 'a
| Many of int * 'a

(* encode : 'a list -> rle list *)
let encode l =
  (* 一度分解して、now_elemの中身が必ず存在する状況を作り出す *)
  match l with
  | [] -> []
  | h :: t ->
    let rec aux l now_elem count =
      match l with
      | [] -> (* 中身がなくなったら(それは最後！なぜならnow_elemの中身が必ず存在する状況作り出したので) *)
        if count = 1 (* 長さが1であるかを確認する *)
        then [One (now_elem)] (* Oneで終了 *)
        else [Many (count, now_elem)] (* Manyで終了 *)
      | h :: t ->
        if now_elem = h (* もし分解した先頭要素が今の先頭要素と等しい *)
        then aux t now_elem (count + 1) (* ならばcountを+1して、次に進む *)
        else 
          if count = 1 (* 違えば、まず長さ1であるかを確認する *)
          then One (now_elem) :: aux t h 1 (* そうならOneで続ける *)
          else Many (count, now_elem) :: aux t h 1 (* 違えばManyで、また続ける *)
    in aux t h 1