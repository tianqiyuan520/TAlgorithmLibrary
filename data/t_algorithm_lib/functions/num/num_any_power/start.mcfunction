###计算任意数的任意次方
#数字
# scoreboard players set #tal.num.temp.num tal.input 0
# scoreboard players operation #tal.num.temp.num2 tal.input = #tal.num.temp.num tal.input
scoreboard players set #tal.num.temp.num2 tal.input 1
#次方
# scoreboard players set #tal.num.temp.power tal.input 0
execute if score #tal.num.temp.power tal.input matches 0 run scoreboard players set #tal.num.temp.num2 tal.input 1
execute if score #tal.num.temp.power tal.input matches 1.. run function t_algorithm_lib:num/num_any_power/loop

#返回值
scoreboard players set #tal.num.temp.power tal.input 1
execute store result storage t_algorithm_lib:num temp.return double 1 run scoreboard players get #tal.num.temp.num2 tal.input
