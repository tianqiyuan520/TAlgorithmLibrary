##以e为底的对数
execute store result score #tal.num.ln.num1 tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][2][0] 1000
function t_algorithm_lib:num/logarithm/ln/start

scoreboard players remove #tal.num.ln.num5 tal.str_parser 690775
scoreboard players operation #tal.num.ln.result tal.str_parser = #tal.num.ln.num5 tal.str_parser

execute store result storage t_algorithm_lib:maths calculator.main.fuc_value double 0.00001 run scoreboard players get #tal.num.ln.num5 tal.str_parser