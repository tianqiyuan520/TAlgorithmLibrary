###获取两数最大公约数
##辗转相除法
##数A
# scoreboard players set #tal.num.get_gcd.num1 tal.str_parser 13
##数B
# scoreboard players set #tal.num.get_gcd.num2 tal.str_parser 19
#
scoreboard players set #tal.num.get_gcd.num3 tal.str_parser 1

scoreboard players operation #tal.num.get_gcd.num4 tal.str_parser = #tal.num.get_gcd.num2 tal.str_parser
scoreboard players operation #tal.num.get_gcd.num4 tal.str_parser %= #tal.num.get_gcd.num1 tal.str_parser
execute unless score #tal.num.get_gcd.num4 tal.str_parser matches 0 run function t_algorithm_lib:num/get_gcd/loop
scoreboard players operation #tal.num.get_gcd.result tal.str_parser = #tal.num.get_gcd.num1 tal.str_parser

##数A
scoreboard players set #tal.num.get_gcd.num1 tal.str_parser 13
##数B
scoreboard players set #tal.num.get_gcd.num2 tal.str_parser 19