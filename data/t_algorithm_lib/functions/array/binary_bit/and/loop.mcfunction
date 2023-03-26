execute store result score #tal.array.binary_bit.and.num tal.str_parser run data get storage t_algorithm_lib:array binary_bit.and.list[0]
execute store result score #tal.array.binary_bit.and.num2 tal.str_parser run data get storage t_algorithm_lib:array binary_bit.and.list2[0]

execute if score #tal.array.binary_bit.and.num tal.str_parser = #tal.array.binary_bit.and.num2 tal.str_parser run data modify storage t_algorithm_lib:array binary_bit.and.result append value 1
execute unless score #tal.array.binary_bit.and.num tal.str_parser = #tal.array.binary_bit.and.num2 tal.str_parser run data modify storage t_algorithm_lib:array binary_bit.and.result append value 0


data remove storage t_algorithm_lib:array binary_bit.and.list[0]
data remove storage t_algorithm_lib:array binary_bit.and.list2[0]
scoreboard players remove #tal.array.binary_bit.and.time tal.str_parser 1
execute if score #tal.array.binary_bit.and.time tal.str_parser matches 1.. run function t_algorithm_lib:array/binary_bit/and/loop
