execute store result score #tal.array.binary_bit.not.num tal.input run data get storage t_algorithm_lib:array binary_bit.not.list[0]
execute if score #tal.array.binary_bit.not.num tal.input matches 0 run data modify storage t_algorithm_lib:array binary_bit.not.result append value 1
execute if score #tal.array.binary_bit.not.num tal.input matches 1 run data modify storage t_algorithm_lib:array binary_bit.not.result append value 0


data remove storage t_algorithm_lib:array binary_bit.not.list[0]
scoreboard players remove #tal.array.binary_bit.not.time tal.input 1
execute if score #tal.array.binary_bit.not.time tal.input matches 1.. run function t_algorithm_lib:array/binary_bit/not/loop
