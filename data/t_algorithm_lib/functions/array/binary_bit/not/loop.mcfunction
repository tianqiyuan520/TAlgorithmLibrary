execute store result score #tal.array.binary_bit.not.num tal.str_parser run data get storage t_algorithm_lib:array binary_bit.not.list[0]
execute if score #tal.array.binary_bit.not.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:array binary_bit.not.result append value 1
execute if score #tal.array.binary_bit.not.num tal.str_parser matches 1 run data modify storage t_algorithm_lib:array binary_bit.not.result append value 0


data remove storage t_algorithm_lib:array binary_bit.not.list[0]
scoreboard players remove #tal.array.binary_bit.not.time tal.str_parser 1
execute if score #tal.array.binary_bit.not.time tal.str_parser matches 1.. run function t_algorithm_lib:array/binary_bit/not/loop
