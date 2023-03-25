data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[0][] set from storage t_algorithm_lib:string function_parser.temp.m[0]
execute store result score #tal.str.temp.num tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list[0][0]

scoreboard players operation #tal.num.temp.num tal.str_parser = #tal.str.temp.num tal.str_parser
function t_algorithm_lib:num/factorial/start
data modify storage t_algorithm_lib:string function_parser.temp.list2 append value []
data modify storage t_algorithm_lib:string function_parser.temp.list2[-1] append from storage t_algorithm_lib:num temp.return
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
