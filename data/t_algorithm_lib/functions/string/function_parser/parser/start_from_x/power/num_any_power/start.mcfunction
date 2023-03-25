##计算任意数的正次方 [精准]
#数字
##计算
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:string function_parser.temp.list[0][0]
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1
data modify storage t_algorithm_lib:string function_parser.power.num set from storage t_algorithm_lib:string function_parser.temp.n1
data modify storage t_algorithm_lib:string function_parser.power.num2 set from storage t_algorithm_lib:array double_to_array.result
#次方
# scoreboard players set #tal.num.temp.power tal.str_parser 0
execute if score #tal.num.temp.power tal.str_parser matches 0 run scoreboard players set #tal.num.temp.num2 tal.str_parser 1
#返回值
execute if score #tal.num.temp.power tal.str_parser matches 0 run data modify storage t_algorithm_lib:num temp.return set value 1.0
execute if score #tal.num.temp.power tal.str_parser matches 1 run data modify storage t_algorithm_lib:num temp.return set from storage t_algorithm_lib:string function_parser.temp.list[0][0]


execute if score #tal.num.temp.power tal.str_parser matches 2.. run function t_algorithm_lib:string/function_parser/parser/start_from_x/power/num_any_power/loop


#返回值
scoreboard players set #tal.num.temp.power tal.str_parser 1
# execute store result storage t_algorithm_lib:num temp.return double 1.0 run scoreboard players get #tal.num.temp.num2 tal.str_parser
