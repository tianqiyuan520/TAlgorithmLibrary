data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.input run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.input matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[0][] set from storage t_algorithm_lib:string function_parser.temp.m[0]


data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[2]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.input run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.input matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[2][] set from storage t_algorithm_lib:string function_parser.temp.m[0]

##计算
execute if score #tal.str.func_p.scale tal.input matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/subtraction/high_cal_1
execute if score #tal.str.func_p.scale tal.input matches 0 run function t_algorithm_lib:string/function_parser/parser/start_from_x/subtraction/low_cal_1
