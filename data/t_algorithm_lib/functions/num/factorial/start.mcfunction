###计算正整数的阶乘
#数字
# scoreboard players set #tal.num.temp.num tal.str_parser 0
scoreboard players operation #tal.num.temp.num2 tal.str_parser = #tal.num.temp.num tal.str_parser
scoreboard players set #tal.num.temp.num3 tal.str_parser 1
scoreboard players set #tal.num.temp.num4 tal.str_parser 1
#阶乘
# scoreboard players set #tal.num.temp.num2 tal.str_parser 1
execute if score #tal.num.temp.num tal.str_parser matches 0 run scoreboard players set #tal.num.temp.num2 tal.str_parser 1
execute if score #tal.num.temp.num2 tal.str_parser matches 1.. run function t_algorithm_lib:num/factorial/loop

#返回值
execute store result storage t_algorithm_lib:num temp.return double 1 run scoreboard players get #tal.num.temp.num4 tal.str_parser
