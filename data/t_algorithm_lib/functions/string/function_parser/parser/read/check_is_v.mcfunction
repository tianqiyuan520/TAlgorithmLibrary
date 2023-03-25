#判断是否只有自变量
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[0][] set from storage t_algorithm_lib:string function_parser.temp.m[0]