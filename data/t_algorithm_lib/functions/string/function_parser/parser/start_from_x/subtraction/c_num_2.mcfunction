data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[1]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[1][] set from storage t_algorithm_lib:string function_parser.temp.m[0]

scoreboard players set #tal.str.temp.is_operation tal.str_parser 1


data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[3]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[3][] set from storage t_algorithm_lib:string function_parser.temp.m[0]

##计算
execute if score #tal.str.func_p.scale tal.str_parser matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/subtraction/high_cal_2
execute if score #tal.str.func_p.scale tal.str_parser matches 0 run function t_algorithm_lib:string/function_parser/parser/start_from_x/subtraction/low_cal_2

data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]

data modify storage t_algorithm_lib:string function_parser.temp.list2 append from storage t_algorithm_lib:string function_parser.temp.list[0]