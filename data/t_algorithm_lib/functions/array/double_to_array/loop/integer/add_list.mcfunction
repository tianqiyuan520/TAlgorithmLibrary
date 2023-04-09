scoreboard players remove #tal.array.double_to_array.tier tal.input 1
execute store result score #tal.array.double_to_array.count2 tal.input run data get storage t_algorithm_lib:array double_to_array.result[0][0]
execute unless score #tal.array.double_to_array.count2 tal.input matches 0 run data modify storage t_algorithm_lib:array double_to_array.result append value [0]
