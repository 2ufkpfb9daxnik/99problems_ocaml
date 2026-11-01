(* pack :  'a list -> 'a list list *)
let pack lst =
  match lst with
  | [] -> []
  | h :: t ->
    let rec aux lst acc =
      match lst with
      | [] -> []
      | h :: t ->
        if 
          match acc with 
          | [] -> [] 
          | h :: _ -> h
          = h
        then
          let acc = h :: acc in
          aux t acc
        else acc :: aux t []
    in aux t [h]