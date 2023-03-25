###计算任意数的任意次方
#数字
# scoreboard players set #tal.num.temp.num tal.str_parser 0
# scoreboard players operation #tal.num.temp.num2 tal.str_parser = #tal.num.temp.num tal.str_parser
scoreboard players set #tal.num.temp.num2 tal.str_parser 1
#次方
# scoreboard players set #tal.num.temp.power tal.str_parser 0
execute if score #tal.num.temp.power tal.str_parser matches 0 run scoreboard players set #tal.num.temp.num2 tal.str_parser 1
execute if score #tal.num.temp.power tal.str_parser matches 1.. run function t_algorithm_lib:num/num_any_power/loop

#返回值
scoreboard players set #tal.num.temp.power tal.str_parser 1
execute store result storage t_algorithm_lib:num temp.return double 1 run scoreboard players get #tal.num.temp.num2 tal.str_parser
