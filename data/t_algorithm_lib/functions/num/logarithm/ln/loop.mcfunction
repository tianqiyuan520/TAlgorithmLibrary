scoreboard players operation #tal.num.ln.num3 tal.input = #tal.num.ln.num1 tal.input
scoreboard players set #2 tal.input 2

scoreboard players operation #tal.num.ln.num3 tal.input %= #2 tal.input

execute if score #tal.num.ln.num3 tal.input matches 0 if score #tal.num.ln.end tal.input matches 0 run function t_algorithm_lib:num/logarithm/ln/d_2_loop

execute if score #tal.num.ln.num1 tal.input matches 3 run scoreboard players set #tal.num.ln.is_ln3 tal.input 1
execute if score #tal.num.ln.num1 tal.input matches 3 run scoreboard players set #tal.num.ln.end tal.input 1

scoreboard players remove #tal.num.ln.num1 tal.input 1
execute if score #tal.num.ln.end tal.input matches 0 unless score #tal.num.ln.num1 tal.input matches 0 run data modify storage t_algorithm_lib:num ln.list append value 0
execute if score #tal.num.ln.end tal.input matches 0 unless score #tal.num.ln.num1 tal.input matches 0 store result storage t_algorithm_lib:num ln.list[-1] int 1 run scoreboard players get #tal.num.ln.num1 tal.input

execute if score #tal.num.ln.num1 tal.input matches 1.. if score #tal.num.ln.end tal.input matches 0 run function t_algorithm_lib:num/logarithm/ln/loop