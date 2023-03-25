scoreboard players operation #tal.num.ln.num3 tal.str_parser = #tal.num.ln.num1 tal.str_parser
scoreboard players set #2 tal.str_parser 2

scoreboard players operation #tal.num.ln.num3 tal.str_parser %= #2 tal.str_parser

execute if score #tal.num.ln.num3 tal.str_parser matches 0 if score #tal.num.ln.end tal.str_parser matches 0 run function t_algorithm_lib:num/logarithm/ln/d_2_loop

execute if score #tal.num.ln.num1 tal.str_parser matches 3 run scoreboard players set #tal.num.ln.is_ln3 tal.str_parser 1
execute if score #tal.num.ln.num1 tal.str_parser matches 3 run scoreboard players set #tal.num.ln.end tal.str_parser 1

scoreboard players remove #tal.num.ln.num1 tal.str_parser 1
execute if score #tal.num.ln.end tal.str_parser matches 0 run data modify storage t_algorithm_lib:num ln.list append value 0
execute if score #tal.num.ln.end tal.str_parser matches 0 store result storage t_algorithm_lib:num ln.list[-1] int 1 run scoreboard players get #tal.num.ln.num1 tal.str_parser

execute if score #tal.num.ln.num1 tal.str_parser matches 1.. if score #tal.num.ln.end tal.str_parser matches 0 run function t_algorithm_lib:num/logarithm/ln/loop