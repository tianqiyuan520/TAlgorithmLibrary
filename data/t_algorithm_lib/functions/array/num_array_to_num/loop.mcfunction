execute store result score #tal.array.temp.num2 tal.str_parser run data get storage t_algorithm_lib:array temp.list[0]

scoreboard players set #tal.num.temp.num tal.str_parser 10
scoreboard players operation #tal.num.temp.power tal.str_parser = #tal.array.temp.list_count tal.str_parser
scoreboard players remove #tal.num.temp.power tal.str_parser 1
function t_algorithm_lib:num/num_any_power/start
execute store result score #tal.array.temp.num3 tal.str_parser run data get storage t_algorithm_lib:num temp.return

scoreboard players operation #tal.array.temp.num2 tal.str_parser *= #tal.array.temp.num3 tal.str_parser
scoreboard players operation #tal.array.temp.num tal.str_parser += #tal.array.temp.num2 tal.str_parser


data remove storage t_algorithm_lib:array temp.list[0]

execute store result score #tal.array.temp.list_count tal.str_parser run data get storage t_algorithm_lib:array temp.list
execute if score #tal.array.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/num_array_to_num/loop