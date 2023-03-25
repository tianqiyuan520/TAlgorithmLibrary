##除2循环

scoreboard players operation #tal.num.ln.num1 tal.str_parser /= #2 tal.str_parser
scoreboard players add #tal.num.ln.num2 tal.str_parser 1

scoreboard players operation #tal.num.ln.num3 tal.str_parser = #tal.num.ln.num1 tal.str_parser
scoreboard players operation #tal.num.ln.num3 tal.str_parser %= #2 tal.str_parser
execute if score #tal.num.ln.num3 tal.str_parser matches 0 run function t_algorithm_lib:num/logarithm/ln/d_2_loop