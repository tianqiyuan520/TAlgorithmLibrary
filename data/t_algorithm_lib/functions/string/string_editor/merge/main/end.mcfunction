data remove storage t_algorithm_lib:string string_editor.merge.return[0]
data modify block -30000000 3 2022219 Command set from storage t_algorithm_lib:string string_editor.merge.io.call_command
data modify storage t_algorithm_lib:string string_editor.merge.io.call_command set value ""
setblock -30000000 3 2022218 air