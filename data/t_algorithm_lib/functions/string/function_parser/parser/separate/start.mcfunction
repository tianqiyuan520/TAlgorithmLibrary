
execute store result score #tal.str.temp.list_count tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.separation
scoreboard players set #tal.str.temp.tier tal.str_parser 0
scoreboard players set #tal.str.temp.is_tier tal.str_parser 0
scoreboard players set #tal.str.temp.is_down_tier tal.str_parser 0
data remove storage t_algorithm_lib:string function_parser.temp.list
#小数点
scoreboard players set #tal.str.temp.is_doit tal.str_parser 0

execute if score #tal.str.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/function_parser/parser/separate/loop