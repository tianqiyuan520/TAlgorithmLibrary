execute store result score #tal.str.temp.num tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[0][0] 1000
execute store result score #tal.str.temp.num2 tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[2][0] 1000

execute if score #tal.str.temp.is_add tal.input matches 1 run scoreboard players operation #tal.str.temp.num tal.input += #tal.str.temp.num2 tal.input
execute if score #tal.str.temp.is_add tal.input matches 0 run scoreboard players operation #tal.str.temp.num tal.input -= #tal.str.temp.num2 tal.input


data modify storage t_algorithm_lib:string function_parser.temp.list2 append value [0.01]
execute store result storage t_algorithm_lib:string function_parser.temp.list2[-1][0] double 0.001 run scoreboard players get #tal.str.temp.num tal.input
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]