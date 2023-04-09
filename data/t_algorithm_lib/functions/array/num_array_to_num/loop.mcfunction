execute store result score #tal.array.temp.num2 tal.input run data get storage t_algorithm_lib:array temp.list[0]

scoreboard players set #tal.num.temp.num tal.input 10
scoreboard players operation #tal.num.temp.power tal.input = #tal.array.temp.list_count tal.input
scoreboard players remove #tal.num.temp.power tal.input 1
function t_algorithm_lib:num/num_any_power/start
execute store result score #tal.array.temp.num3 tal.input run data get storage t_algorithm_lib:num temp.return

scoreboard players operation #tal.array.temp.num2 tal.input *= #tal.array.temp.num3 tal.input
scoreboard players operation #tal.array.temp.num tal.input += #tal.array.temp.num2 tal.input


data remove storage t_algorithm_lib:array temp.list[0]

execute store result score #tal.array.temp.list_count tal.input run data get storage t_algorithm_lib:array temp.list
execute if score #tal.array.temp.list_count tal.input matches 1.. run function t_algorithm_lib:array/num_array_to_num/loop