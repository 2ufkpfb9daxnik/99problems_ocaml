(* これもincreaseとdecreaseを分けなくてもいい感じにできると思う *)
(* range : int -> int -> int list *)
let range l r =
  let rec increase l r =
    if l <= r
      then l :: increase (l + 1) r
      else []
  in
  let rec decrease l r =
    if l >= r
      then l :: decrease (l - 1) r
      else []
  in
  if l < r 
    then increase l r
    else decrease l r 