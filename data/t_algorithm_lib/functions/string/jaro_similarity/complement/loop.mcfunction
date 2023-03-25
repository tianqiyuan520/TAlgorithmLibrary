
execute if score #tal.str.jaro_similarity.list_count1 tal.str_parser > #tal.str.jaro_similarity.list_count2 tal.str_parser run data modify storage t_algorithm_lib:string jaro_similarity.strB prepend value ' '
execute if score #tal.str.jaro_similarity.list_count1 tal.str_parser < #tal.str.jaro_similarity.list_count2 tal.str_parser run data modify storage t_algorithm_lib:string jaro_similarity.strA prepend value ' '



execute store result score #tal.str.jaro_similarity.list_count1 tal.str_parser run data get storage t_algorithm_lib:string jaro_similarity.strA
execute store result score #tal.str.jaro_similarity.list_count2 tal.str_parser run data get storage t_algorithm_lib:string jaro_similarity.strB

execute unless score #tal.str.jaro_similarity.list_count1 tal.str_parser = #tal.str.jaro_similarity.list_count2 tal.str_parser run function t_algorithm_lib:string/jaro_similarity/complement/loop

