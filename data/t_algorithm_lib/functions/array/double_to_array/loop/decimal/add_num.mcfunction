
execute store result score #tal.array.double_to_array.count2 tal.input run data get storage t_algorithm_lib:array double_to_array.result[-1][0]
execute store result storage t_algorithm_lib:array double_to_array.result[-1][0] int 1 run scoreboard players add #tal.array.double_to_array.count2 tal.input 1