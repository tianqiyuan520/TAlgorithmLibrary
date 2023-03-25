data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[0][] set from storage t_algorithm_lib:string function_parser.temp.m[0]


data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[2]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[2][] set from storage t_algorithm_lib:string function_parser.temp.m[0]

##计算

execute if score #tal.str.func_p.scale tal.str_parser matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/mul/high_cal
execute if score #tal.str.func_p.scale tal.str_parser matches 0 if score #tal.str.temp.is_division tal.str_parser matches 0 run function t_algorithm_lib:string/function_parser/parser/start_from_x/mul/low_cal
execute if score #tal.str.func_p.scale tal.str_parser matches 0 if score #tal.str.temp.is_division tal.str_parser matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/mul/low_cal2


data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]