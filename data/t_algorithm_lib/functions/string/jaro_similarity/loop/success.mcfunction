scoreboard players add #tal.str.jaro_similarity.m tal.input 1
data modify storage t_algorithm_lib:string jaro_similarity.index append value 0
execute store result storage t_algorithm_lib:string jaro_similarity.index[-1] int 1 run scoreboard players get #tal.str.jaro_similarity.index tal.input
