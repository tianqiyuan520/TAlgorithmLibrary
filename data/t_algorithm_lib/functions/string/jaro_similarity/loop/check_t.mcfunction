##确认错序的字符
execute store result score #tal.str.jaro_similarity.num1 tal.input run data get storage t_algorithm_lib:string jaro_similarity.list1[0]
execute store result score #tal.str.jaro_similarity.num2 tal.input run data get storage t_algorithm_lib:string jaro_similarity.list1[1]

execute if score #tal.str.jaro_similarity.num1 tal.input > #tal.str.jaro_similarity.num2 tal.input run scoreboard players add #tal.str.jaro_similarity.t tal.input 2



data remove storage t_algorithm_lib:string jaro_similarity.list1[0]
execute store result score #tal.str.jaro_similarity.list_count1 tal.input run data get storage t_algorithm_lib:string jaro_similarity.list1
execute if score #tal.str.jaro_similarity.list_count1 tal.input matches 1.. run function t_algorithm_lib:string/jaro_similarity/loop/check_t