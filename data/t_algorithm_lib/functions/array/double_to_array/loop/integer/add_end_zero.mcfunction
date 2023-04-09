data modify storage t_algorithm_lib:array double_to_array.result append value [0]

scoreboard players remove #tal.array.double_to_array.tier tal.input 1
execute if score #tal.array.double_to_array.tier tal.input matches 1.. run function t_algorithm_lib:array/double_to_array/loop/integer/add_end_zero