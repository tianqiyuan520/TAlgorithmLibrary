execute store result score #tal.str.temp.num tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[1][0] 1000
execute store result score #tal.str.temp.num2 tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[3][0] 1000

execute if score #tal.str.temp.is_add tal.input matches 1 run scoreboard players operation #tal.str.temp.num tal.input += #tal.str.temp.num2 tal.input
execute if score #tal.str.temp.is_add tal.input matches 0 run scoreboard players operation #tal.str.temp.num tal.input -= #tal.str.temp.num2 tal.input

scoreboard players set #tal.str.temp.symbol tal.input 0
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["-"]} run scoreboard players set #tal.str.temp.symbol tal.input 1
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["+"]} run scoreboard players set #tal.str.temp.symbol tal.input 1
execute if score #tal.str.temp.symbol tal.input matches 1 run data modify storage t_algorithm_lib:string function_parser.temp.list2 append value ['+']


execute if score #tal.str.temp.symbol tal.input matches 0 run data modify storage t_algorithm_lib:string function_parser.temp.list2 append from storage t_algorithm_lib:string function_parser.temp.list[0]

data modify storage t_algorithm_lib:string function_parser.temp.list2 append value [0.01]
execute store result storage t_algorithm_lib:string function_parser.temp.list2[-1][0] double 0.001 run scoreboard players get #tal.str.temp.num tal.input