execute store result score #tal.num.exponentiation_by_squaring.num1 tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num2
##余2 判断
scoreboard players set #2 tal.str_parser 2
scoreboard players set #tal.num.exponentiation_by_squaring.is_o tal.str_parser 0
scoreboard players operation #tal.num.exponentiation_by_squaring.num1 tal.str_parser %= #2 tal.str_parser
execute if score #tal.num.exponentiation_by_squaring.num1 tal.str_parser matches 1 run function t_algorithm_lib:num/exponentiation_by_squaring/main/odd


execute store result score #tal.num.exponentiation_by_squaring.num1 tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num2
##余2 判断
scoreboard players set #2 tal.str_parser 2
scoreboard players operation #tal.num.exponentiation_by_squaring.num1 tal.str_parser %= #2 tal.str_parser
execute if score #tal.num.exponentiation_by_squaring.num1 tal.str_parser matches 0 if score #tal.num.exponentiation_by_squaring.is_o tal.str_parser matches 0 run function t_algorithm_lib:num/exponentiation_by_squaring/main/even
