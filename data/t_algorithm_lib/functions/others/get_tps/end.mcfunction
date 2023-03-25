function t_algorithm_lib:others/time_consuming/end
scoreboard players set #100 tal.str_parser 100
scoreboard players operation #tal.time_consuming.result tal.str_parser *= #100 tal.str_parser
scoreboard players set #tal.get_tps.num tal.str_parser 50
scoreboard players operation #tal.time_consuming.result tal.str_parser /= #tal.get_tps.num tal.str_parser
execute store result storage t_algorithm_lib:others get_tps.result double 0.01 run scoreboard players get #tal.time_consuming.result tal.str_parser
