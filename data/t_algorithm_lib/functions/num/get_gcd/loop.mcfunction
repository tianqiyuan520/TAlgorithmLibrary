
scoreboard players operation #tal.num.get_gcd.num4 tal.str_parser = #tal.num.get_gcd.num2 tal.str_parser
scoreboard players operation #tal.num.get_gcd.num4 tal.str_parser %= #tal.num.get_gcd.num1 tal.str_parser
execute unless score #tal.num.get_gcd.num4 tal.str_parser matches 0 run function t_algorithm_lib:num/get_gcd/check
