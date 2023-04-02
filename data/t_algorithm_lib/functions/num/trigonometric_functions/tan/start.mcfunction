###三角函数计算 tan()
#数字
# scoreboard players set #tal.num.temp.num_b tal.input 0

scoreboard players operation #tal.num.temp.x tal.input = #tal.num.temp.num_b tal.input
scoreboard players set #tal.num.temp.num_ tal.input 0
scoreboard players operation #tal.num.temp.num2_ tal.input = #tal.num.temp.num_ tal.input
scoreboard players set #2 tal.input 2
scoreboard players set #-1 tal.input -1
scoreboard players set #tal.num.is<=0 tal.input 0
scoreboard players set #100 tal.input 100
scoreboard players set #tal.num.temp.num3 tal.input 0
scoreboard players set #tal.num.temp.num4 tal.input 0
scoreboard players set #tal.num.temp.num4_ tal.input 0
scoreboard players set #tal.num.temp.num5 tal.input 0
scoreboard players set #tal.num.temp.num6 tal.input 0
scoreboard players set #tal.num.temp.is_negative tal.input 0
scoreboard players set #tal.num.temp.pi tal.input 31415
scoreboard players set #tal.num.temp.2pi tal.input 62830
execute if score #tal.num.temp.x tal.input matches ..0 run scoreboard players set #tal.num.is<=0 tal.input 1
execute if score #tal.num.temp.x tal.input matches ..0 run scoreboard players set #tal.num.temp.is_negative tal.input 1
execute if score #tal.num.temp.x tal.input matches ..0 run scoreboard players operation #tal.num.temp.x tal.input *= #-1 tal.input

execute store result storage t_algorithm_lib:num temp.x double 0.00001 run scoreboard players get #tal.num.temp.x tal.input

execute positioned -30000000 6.2831852 2022239 run function t_algorithm_lib:num/trigonometric_functions/tan/loop