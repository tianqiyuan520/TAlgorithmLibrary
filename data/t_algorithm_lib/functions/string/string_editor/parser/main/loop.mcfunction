execute if score #tal.str.strEDIT.parser.indexN tal.str_parser >= #tal.str.strEDIT.parser.index_1 tal.str_parser run scoreboard players remove #tal.str.strEDIT.parser.str_interval_ tal.str_parser 1
execute if score #tal.str.strEDIT.parser.str_interval_ tal.str_parser matches 0 run data modify storage t_algorithm_lib:string string_editor.parser.return append string storage t_algorithm_lib:string string_editor.parser.temp.str 0 1

#
function t_algorithm_lib:string/string_editor/parser/main/get_remaining
execute if score #tal.str.strEDIT.parser.str_interval_ tal.str_parser matches 0 run scoreboard players operation #tal.str.strEDIT.parser.str_interval_ tal.str_parser = #tal.str.strEDIT.parser.str_interval tal.str_parser

scoreboard players remove #tal.str.strEDIT.parser.loop_end tal.str_parser 1
scoreboard players add #tal.str.strEDIT.parser.indexN tal.str_parser 1

execute if score #tal.str.strEDIT.parser.loop_end tal.str_parser matches 0 run function t_algorithm_lib:string/string_editor/parser/main/end
execute if score #tal.str.strEDIT.parser.loop_end tal.str_parser matches 1.. run function t_algorithm_lib:string/string_editor/parser/main/loop
