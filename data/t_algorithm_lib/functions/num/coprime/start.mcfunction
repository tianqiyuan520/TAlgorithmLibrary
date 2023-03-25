###判断两数是否互质
##辗转相除法判断最大公约数是否为1
##数A
# scoreboard players set #tal.num.coprime.num1 tal.str_parser 13
##数B
# scoreboard players set #tal.num.coprime.num2 tal.str_parser 19
scoreboard players set #tal.num.coprime.result tal.str_parser 0
scoreboard players operation #tal.num.get_gcd.num1 tal.str_parser = #tal.num.coprime.num1 tal.str_parser
scoreboard players operation #tal.num.get_gcd.num2 tal.str_parser = #tal.num.coprime.num2 tal.str_parser
function t_algorithm_lib:num/get_gcd/start
execute if score #tal.num.get_gcd.result tal.str_parser matches 1 run scoreboard players set #tal.num.coprime.result tal.str_parser 1
##数A
scoreboard players set #tal.num.coprime.num1 tal.str_parser 13
##数B
scoreboard players set #tal.num.coprime.num2 tal.str_parser 19