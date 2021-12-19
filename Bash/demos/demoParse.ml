open Bash_lib

let () =
  let s = Stdio.In_channel.input_all stdin in
  match Parser.parse s with
  | Result.Ok script -> Ast.pp_script Format.std_formatter script
  | Error _ -> Format.printf "Parsing error"
;;