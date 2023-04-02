execute if score #tal.str.strEDIT.parser.indexN tal.input >= #tal.str.strEDIT.parser.index_1 tal.input run scoreboard players remove #tal.str.strEDIT.parser.str_interval_ tal.input 1
execute if score #tal.str.strEDIT.parser.str_interval_ tal.input matches 0 run data modify storage t_algorithm_lib:string string_editor.parser.return append string storage t_algorithm_lib:string string_editor.parser.temp.str 0 1

#
function t_algorithm_lib:string/string_editor/parser/main/get_remaining
execute if score #tal.str.strEDIT.parser.str_interval_ tal.input matches 0 run scoreboard players operation #tal.str.strEDIT.parser.str_interval_ tal.input = #tal.str.strEDIT.parser.str_interval tal.input

scoreboard players remove #tal.str.strEDIT.parser.loop_end tal.input 1
scoreboard players add #tal.str.strEDIT.parser.indexN tal.input 1

execute if score #tal.str.strEDIT.parser.loop_end tal.input matches 0 run function t_algorithm_lib:string/string_editor/parser/main/end
execute if score #tal.str.strEDIT.parser.loop_end tal.input matches 1.. run function t_algorithm_lib:string/string_editor/parser/main/loop
