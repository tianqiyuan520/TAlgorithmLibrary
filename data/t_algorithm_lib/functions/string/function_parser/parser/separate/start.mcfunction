
execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:string function_parser.temp.separation
scoreboard players set #tal.str.temp.tier tal.input 0
scoreboard players set #tal.str.temp.is_tier tal.input 0
scoreboard players set #tal.str.temp.is_down_tier tal.input 0
data remove storage t_algorithm_lib:string function_parser.temp.list
#小数点
scoreboard players set #tal.str.temp.is_doit tal.input 0

execute if score #tal.str.temp.list_count tal.input matches 1.. run function t_algorithm_lib:string/function_parser/parser/separate/loop