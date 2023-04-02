
scoreboard players operation #tal.num.temp.num2 tal.input *= #tal.num.temp.num tal.input
scoreboard players remove #tal.num.temp.power tal.input 1
execute if score #tal.num.temp.power tal.input matches 1.. run function t_algorithm_lib:num/num_any_power/loop
