
execute unless score #tal.array.double_to_array.tier tal.str_parser matches 0 run function t_algorithm_lib:array/double_to_array/loop/integer/add_end_zero
scoreboard players set #tal.array.double_to_array.tier tal.str_parser 0
execute as 00000000-0000-1d63-0000-000700000001 run tp ~ ~0.0 ~

execute if score #tal.array.double_to_array.negative tal.str_parser matches 1 run data modify storage t_algorithm_lib:array double_to_array.result prepend value ['-']

data modify storage t_algorithm_lib:array double_to_array.result append value ['.']
data modify storage t_algorithm_lib:array double_to_array.result append value [0]

execute if score #tal.array.double_to_array.negative tal.str_parser matches 0 run data modify entity 00000000-0000-1d63-0000-000700000003 Pos[1] set value -0.00000000001d
execute if score #tal.array.double_to_array.negative tal.str_parser matches 1 run data modify entity 00000000-0000-1d63-0000-000700000003 Pos[1] set value 0.00000000001d

function t_algorithm_lib:array/double_to_array/loop/decimal/tp_0
scoreboard players set #tal.array.double_to_array.end tal.str_parser 1

