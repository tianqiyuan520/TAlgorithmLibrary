function t_algorithm_lib:others/time_consuming/end
scoreboard players set #100 tal.input 100
scoreboard players operation #tal.time_consuming.result tal.input *= #100 tal.input
scoreboard players set #tal.get_tps.num tal.input 50
scoreboard players operation #tal.time_consuming.result tal.input /= #tal.get_tps.num tal.input
execute store result storage t_algorithm_lib:others get_tps.result double 0.01 run scoreboard players get #tal.time_consuming.result tal.input
