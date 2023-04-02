scoreboard players operation #tal.num.get_gcd.num3 tal.input = #tal.num.get_gcd.num1 tal.input
scoreboard players operation #tal.num.get_gcd.num1 tal.input = #tal.num.get_gcd.num2 tal.input
scoreboard players operation #tal.num.get_gcd.num1 tal.input %= #tal.num.get_gcd.num3 tal.input
scoreboard players operation #tal.num.get_gcd.num2 tal.input = #tal.num.get_gcd.num3 tal.input

function t_algorithm_lib:num/get_gcd/loop