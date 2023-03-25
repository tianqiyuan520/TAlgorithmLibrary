# scoreboard players operation #tal.num.temp.num2 tal.str_parser = #tal.num.temp.x tal.str_parser
# scoreboard players set #314000 tal.str_parser 31400000
# scoreboard players operation #tal.num.temp.num2 tal.str_parser /= #314000 tal.str_parser
# scoreboard players operation #tal.num.temp.num2 tal.str_parser *= #314000 tal.str_parser



scoreboard players remove #tal.num.temp.x tal.str_parser 314159260

execute store result storage t_algorithm_lib:num temp.x double 0.00001 run scoreboard players get #tal.num.temp.x tal.str_parser
