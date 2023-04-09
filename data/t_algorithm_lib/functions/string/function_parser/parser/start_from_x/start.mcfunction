##定位到x后开始计算
## 次方 > 乘除 > 加减
# data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.separation
scoreboard players operation #tal.str.temp.num tal.input = #tal.str.func_p.arg.x tal.input
scoreboard players set #tal.str.temp.num_power tal.input 0
scoreboard players set #tal.str.temp.num2 tal.input 0
scoreboard players set #tal.str.temp.num3 tal.input 0
#判断 x的右边有没有^
#判断
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
scoreboard players set #tal.str.temp.success tal.input 0
execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:string function_parser.temp.list
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["^"]} run function t_algorithm_lib:string/function_parser/parser/start_from_x/have_power
##
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["*"]} run function t_algorithm_lib:string/function_parser/parser/start_from_x/have_power
