execute store result score #tal.array.int_array_to_double_array.num tal.str_parser run data get storage t_algorithm_lib:array int_array_to_double_array.list[0]

data modify storage t_algorithm_lib:array int_array_to_double_array.return append value 0d
execute store result storage t_algorithm_lib:array int_array_to_double_array.return[-1] double 1.0 run scoreboard players get #tal.array.int_array_to_double_array.num tal.str_parser

data remove storage t_algorithm_lib:array int_array_to_double_array.list[0]
execute store result score #tal.array.int_array_to_double_array.num tal.str_parser run data get storage t_algorithm_lib:array int_array_to_double_array.list
execute if score #tal.array.int_array_to_double_array.num tal.str_parser matches 1.. run function t_algorithm_lib:array/int_array_to_double_array/loop