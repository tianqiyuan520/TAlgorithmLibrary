execute store result score #tal.str.temp.num tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list[0][0] 1000
execute store result score #tal.str.temp.num2 tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list[2][0] 1000

scoreboard players operation #tal.str.temp.num tal.str_parser *= #tal.str.temp.num2 tal.str_parser


data modify storage t_algorithm_lib:string function_parser.temp.list2 append value [0.01]
execute store result storage t_algorithm_lib:string function_parser.temp.list2[-1][0] double 0.000001 run scoreboard players get #tal.str.temp.num tal.str_parser