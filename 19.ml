(* 絶対cross(0をまたいでいるか?ということで)とかいう関数は消せると思います。
   今は馬鹿なので考えれません
   少なくともif 0 < nが2箇所に分岐してるのはキモすぎる *)
(* rotate : 'a list -> int -> 'a list *)
let rotate l n =
  let cross h t acc =
    if 0 < n
      then t @ List.rev acc
      else h :: t @ List.rev acc
  in
  let rec aux l n acc i =
  match l with
  | [] -> []
  | h :: t ->
    if i < n
      then aux t n (h :: acc) (i + 1)
      else cross h t acc
  in
  if 0 < n
    then aux l n [] 0
    else aux l (List.length l + n) []  0
    (* この部分は場合分けをしなくても(List.length l + n) mod (List.length l)で共通化出来そうではあるが、
       こっちのほうがわかりやすいと思う *)