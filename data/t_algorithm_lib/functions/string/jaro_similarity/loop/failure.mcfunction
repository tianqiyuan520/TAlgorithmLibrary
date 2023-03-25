##匹配失败，进行位移匹配

##循环边界 [index-可位移，index+可位移]
scoreboard players operation #tal.str.jaro_similarity.num tal.str_parser = #tal.str.jaro_similarity.index tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.num2 tal.str_parser = #tal.str.jaro_similarity.index tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.num tal.str_parser -= #tal.str.jaro_similarity.c_s tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.num2 tal.str_parser += #tal.str.jaro_similarity.c_s tal.str_parser

execute if score #tal.str.jaro_similarity.num tal.str_parser matches 0.. if score #tal.str.jaro_similarity.num tal.str_parser < #tal.str.jaro_similarity.num2 tal.str_parser run function t_algorithm_lib:string/jaro_similarity/loop/failure_loop
