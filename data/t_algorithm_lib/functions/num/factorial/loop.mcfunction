scoreboard players operation #tal.num.temp.num4 tal.input *= #tal.num.temp.num3 tal.input

scoreboard players add #tal.num.temp.num3 tal.input 1

scoreboard players remove #tal.num.temp.num2 tal.input 1
execute if score #tal.num.temp.num2 tal.input matches 1.. run function t_algorithm_lib:num/factorial/loop