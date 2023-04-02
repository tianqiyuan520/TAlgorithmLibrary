execute store result score #tal.str.temp.num tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[0][0] 1000
execute store result score #tal.str.temp.num_ tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[0][0] 1000
execute store result score #tal.str.temp.num2 tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[2][0] 1000
scoreboard players set #1000 tal.input 1000
#取余
scoreboard players operation #tal.str.temp.num_ tal.input %= #tal.str.temp.num2 tal.input
scoreboard players operation #tal.str.temp.num_ tal.input *= #1000 tal.input
#cal
scoreboard players operation #tal.str.temp.num tal.input /= #tal.str.temp.num2 tal.input
scoreboard players operation #tal.str.temp.num_ tal.input /= #tal.str.temp.num2 tal.input
scoreboard players operation #tal.str.temp.num tal.input *= #1000 tal.input
scoreboard players operation #tal.str.temp.num tal.input += #tal.str.temp.num_ tal.input

data modify storage t_algorithm_lib:string function_parser.temp.list2 append value [0.01]
execute store result storage t_algorithm_lib:string function_parser.temp.list2[-1][0] double 0.001 run scoreboard players get #tal.str.temp.num tal.input