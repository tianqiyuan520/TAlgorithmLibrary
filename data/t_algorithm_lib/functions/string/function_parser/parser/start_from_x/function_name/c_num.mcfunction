data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[1]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.input run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.input matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[1][] set from storage t_algorithm_lib:string function_parser.temp.m[0]

execute store result score #tal.str.temp.num2 tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[1][0] 100000

##计算三角函数
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
scoreboard players operation #tal.num.temp.num_b tal.input = #tal.str.temp.num2 tal.input
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["sin("]} run function t_algorithm_lib:num/trigonometric_functions/sin/start
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["cos("]} run function t_algorithm_lib:num/trigonometric_functions/cos/start
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["tan("]} run function t_algorithm_lib:num/trigonometric_functions/tan/start


execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["ln("]} run function t_algorithm_lib:string/function_parser/parser/start_from_x/function_name/ln

data modify storage t_algorithm_lib:string function_parser.temp.list2 append value []
data modify storage t_algorithm_lib:string function_parser.temp.list2[-1] append from storage t_algorithm_lib:num temp.return

data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
