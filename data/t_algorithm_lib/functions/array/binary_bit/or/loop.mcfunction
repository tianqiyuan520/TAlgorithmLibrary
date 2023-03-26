execute store result score #tal.array.binary_bit.or.num tal.str_parser run data get storage t_algorithm_lib:array binary_bit.or.list[0]
execute store result score #tal.array.binary_bit.or.num2 tal.str_parser run data get storage t_algorithm_lib:array binary_bit.or.list2[0]

data modify storage t_algorithm_lib:array binary_bit.or.result append value 0
execute if score #tal.array.binary_bit.or.num tal.str_parser matches 1 run data modify storage t_algorithm_lib:array binary_bit.or.result[-1] set value 1
execute if score #tal.array.binary_bit.or.num2 tal.str_parser matches 1 run data modify storage t_algorithm_lib:array binary_bit.or.result[-1] set value 1


data remove storage t_algorithm_lib:array binary_bit.or.list[0]
data remove storage t_algorithm_lib:array binary_bit.or.list2[0]
scoreboard players remove #tal.array.binary_bit.or.time tal.str_parser 1
execute if score #tal.array.binary_bit.or.time tal.str_parser matches 1.. run function t_algorithm_lib:array/binary_bit/or/loop
