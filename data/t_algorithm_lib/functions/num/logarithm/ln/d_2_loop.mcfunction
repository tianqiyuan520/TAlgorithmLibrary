##除2循环

scoreboard players operation #tal.num.ln.num1 tal.input /= #2 tal.input
scoreboard players add #tal.num.ln.num2 tal.input 1

scoreboard players operation #tal.num.ln.num3 tal.input = #tal.num.ln.num1 tal.input
scoreboard players operation #tal.num.ln.num3 tal.input %= #2 tal.input
execute if score #tal.num.ln.num3 tal.input matches 0 run function t_algorithm_lib:num/logarithm/ln/d_2_loop