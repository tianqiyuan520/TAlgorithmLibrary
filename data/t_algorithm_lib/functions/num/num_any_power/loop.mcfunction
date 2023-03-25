
scoreboard players operation #tal.num.temp.num2 tal.str_parser *= #tal.num.temp.num tal.str_parser
scoreboard players remove #tal.num.temp.power tal.str_parser 1
execute if score #tal.num.temp.power tal.str_parser matches 1.. run function t_algorithm_lib:num/num_any_power/loop
