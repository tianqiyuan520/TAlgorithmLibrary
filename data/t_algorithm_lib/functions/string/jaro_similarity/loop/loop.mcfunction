##判断相等
scoreboard players set #tal.str.jaro_similarity.check tal.str_parser 1
data modify storage t_algorithm_lib:string jaro_similarity.check set from storage t_algorithm_lib:string jaro_similarity.list1[0]
execute store success score #tal.str.jaro_similarity.check tal.str_parser run data modify storage t_algorithm_lib:string jaro_similarity.check set from storage t_algorithm_lib:string jaro_similarity.list2[0]
execute if score #tal.str.jaro_similarity.check tal.str_parser matches 0 run function t_algorithm_lib:string/jaro_similarity/loop/success
##如果不匹配，则位移判断
execute if score #tal.str.jaro_similarity.check tal.str_parser matches 1 run function t_algorithm_lib:string/jaro_similarity/loop/failure


data remove storage t_algorithm_lib:string jaro_similarity.list1[0]
data remove storage t_algorithm_lib:string jaro_similarity.list2[0]
scoreboard players add #tal.str.jaro_similarity.index tal.str_parser 1

execute store result score #tal.str.jaro_similarity.list_count1 tal.str_parser run data get storage t_algorithm_lib:string jaro_similarity.list1
execute if score #tal.str.jaro_similarity.list_count1 tal.str_parser matches 1.. run function t_algorithm_lib:string/jaro_similarity/loop/loop