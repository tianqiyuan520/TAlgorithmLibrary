
scoreboard players operation #tal.num.get_gcd.num4 tal.input = #tal.num.get_gcd.num2 tal.input
scoreboard players operation #tal.num.get_gcd.num4 tal.input %= #tal.num.get_gcd.num1 tal.input
execute unless score #tal.num.get_gcd.num4 tal.input matches 0 run function t_algorithm_lib:num/get_gcd/check
