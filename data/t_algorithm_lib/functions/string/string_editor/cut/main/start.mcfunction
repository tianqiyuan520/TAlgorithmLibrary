data modify storage t_algorithm_lib:string string_editor.merge.io.input set value [[]]
data modify storage t_algorithm_lib:string string_editor.merge.io.input[0] set from storage t_algorithm_lib:string string_editor.parser.return
data modify storage t_algorithm_lib:string string_editor.merge.io.call_command set value "data modify storage t_algorithm_lib:string string_editor.cut.return set from storage t_algorithm_lib:string string_editor.merge.return[0]"
function t_algorithm_lib:string/string_editor/merge/start


