scoreboard players operation #tal.num.temp.num4 tal.str_parser *= #tal.num.temp.num3 tal.str_parser

scoreboard players add #tal.num.temp.num3 tal.str_parser 1

scoreboard players remove #tal.num.temp.num2 tal.str_parser 1
execute if score #tal.num.temp.num2 tal.str_parser matches 1.. run function t_algorithm_lib:num/factorial/loop