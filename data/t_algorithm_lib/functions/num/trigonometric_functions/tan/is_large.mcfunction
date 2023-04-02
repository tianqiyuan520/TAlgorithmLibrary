# scoreboard players operation #tal.num.temp.num2 tal.input = #tal.num.temp.x tal.input
# scoreboard players set #314000 tal.input 31400000
# scoreboard players operation #tal.num.temp.num2 tal.input /= #314000 tal.input
# scoreboard players operation #tal.num.temp.num2 tal.input *= #314000 tal.input



scoreboard players remove #tal.num.temp.x tal.input 314159260

execute store result storage t_algorithm_lib:num temp.x double 0.00001 run scoreboard players get #tal.num.temp.x tal.input
