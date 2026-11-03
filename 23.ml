(* rand入ってるけどunitはどうなん、調べます->特にないらしい? *)
(* そもそもrandの使い方知らんがちでは *)
(* rand_select : 'a list -> int -> 'a list *)
let rand_select l n =
  let rec aux l n i =
    let x = Random.int n in
    x :: i in
    