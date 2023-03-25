###三角函数计算 sin()
#数字
# scoreboard players set #tal.num.temp.num_b tal.str_parser 0

scoreboard players operation #tal.num.temp.x tal.str_parser = #tal.num.temp.num_b tal.str_parser
scoreboard players set #tal.num.temp.num_ tal.str_parser 0
scoreboard players operation #tal.num.temp.num2_ tal.str_parser = #tal.num.temp.num_ tal.str_parser
scoreboard players set #2 tal.str_parser 2
scoreboard players set #-1 tal.str_parser -1
scoreboard players set #tal.num.is<=0 tal.str_parser 0
scoreboard players set #100 tal.str_parser 100
scoreboard players set #tal.num.temp.num3 tal.str_parser 0
scoreboard players set #tal.num.temp.num4 tal.str_parser 0
scoreboard players set #tal.num.temp.num4_ tal.str_parser 0
scoreboard players set #tal.num.temp.num5 tal.str_parser 0
scoreboard players set #tal.num.temp.num6 tal.str_parser 0
scoreboard players set #tal.num.temp.is_negative tal.str_parser 0
scoreboard players set #tal.num.temp.pi tal.str_parser 31415
scoreboard players set #tal.num.temp.2pi tal.str_parser 62830
execute if score #tal.num.temp.x tal.str_parser matches ..0 run scoreboard players set #tal.num.is<=0 tal.str_parser 1
execute if score #tal.num.temp.x tal.str_parser matches ..0 run scoreboard players set #tal.num.temp.is_negative tal.str_parser 1
execute if score #tal.num.temp.x tal.str_parser matches ..0 run scoreboard players operation #tal.num.temp.x tal.str_parser *= #-1 tal.str_parser

execute store result storage t_algorithm_lib:num temp.x double 0.00001 run scoreboard players get #tal.num.temp.x tal.str_parser

execute positioned -30000000 6.2831852 2022239 run function t_algorithm_lib:num/trigonometric_functions/sin/loop