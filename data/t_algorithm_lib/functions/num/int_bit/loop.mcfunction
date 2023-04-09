scoreboard players operation #tal.num.int_bit.num2 tal.input = #tal.num.int_bit.num tal.input
data modify storage t_algorithm_lib:num int_bit.result prepend value 0
execute store result storage t_algorithm_lib:num int_bit.result[0] int 1 run scoreboard players operation #tal.num.int_bit.num2 tal.input %= #10 tal.input
scoreboard players operation #tal.num.int_bit.num tal.input /= #10 tal.input
execute if score #tal.num.int_bit.num tal.input matches 1.. run function t_algorithm_lib:num/int_bit/loop