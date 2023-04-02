##匹配失败，进行位移匹配

##循环边界 [index-可位移，index+可位移]
scoreboard players operation #tal.str.jaro_similarity.num tal.input = #tal.str.jaro_similarity.index tal.input
scoreboard players operation #tal.str.jaro_similarity.num2 tal.input = #tal.str.jaro_similarity.index tal.input
scoreboard players operation #tal.str.jaro_similarity.num tal.input -= #tal.str.jaro_similarity.c_s tal.input
scoreboard players operation #tal.str.jaro_similarity.num2 tal.input += #tal.str.jaro_similarity.c_s tal.input

execute if score #tal.str.jaro_similarity.num tal.input matches 0.. if score #tal.str.jaro_similarity.num tal.input < #tal.str.jaro_similarity.num2 tal.input run function t_algorithm_lib:string/jaro_similarity/loop/failure_loop
