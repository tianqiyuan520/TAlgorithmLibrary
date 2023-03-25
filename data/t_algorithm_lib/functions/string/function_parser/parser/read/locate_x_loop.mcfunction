#判断
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
scoreboard players set #tal.str.temp.success tal.str_parser 0
execute store result score #tal.str.temp.list_count tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} run scoreboard players set #tal.str.temp.success tal.str_parser 1

data modify storage t_algorithm_lib:string function_parser.temp.list2 append from storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]

execute store result score #tal.str.temp.list_count tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list
execute unless score #tal.str.temp.success tal.str_parser matches 1 if score #tal.str.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/function_parser/parser/read/locate_x_loop

execute if score #tal.str.temp.success tal.str_parser matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/start