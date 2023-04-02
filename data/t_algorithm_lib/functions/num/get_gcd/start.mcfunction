###获取两数最大公约数
##辗转相除法
##数A
# scoreboard players set #tal.num.get_gcd.num1 tal.input 13
##数B
# scoreboard players set #tal.num.get_gcd.num2 tal.input 19
#
scoreboard players set #tal.num.get_gcd.num3 tal.input 1

scoreboard players operation #tal.num.get_gcd.num4 tal.input = #tal.num.get_gcd.num2 tal.input
scoreboard players operation #tal.num.get_gcd.num4 tal.input %= #tal.num.get_gcd.num1 tal.input
execute unless score #tal.num.get_gcd.num4 tal.input matches 0 run function t_algorithm_lib:num/get_gcd/loop
scoreboard players operation #tal.num.get_gcd.result tal.input = #tal.num.get_gcd.num1 tal.input

##数A
scoreboard players set #tal.num.get_gcd.num1 tal.input 13
##数B
scoreboard players set #tal.num.get_gcd.num2 tal.input 19