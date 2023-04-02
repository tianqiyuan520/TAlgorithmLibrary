execute store result score #tal.array.binary_bit.and.num tal.input run data get storage t_algorithm_lib:array binary_bit.and.list[0]
execute store result score #tal.array.binary_bit.and.num2 tal.input run data get storage t_algorithm_lib:array binary_bit.and.list2[0]

execute if score #tal.array.binary_bit.and.num tal.input = #tal.array.binary_bit.and.num2 tal.input run data modify storage t_algorithm_lib:array binary_bit.and.result append value 1
execute unless score #tal.array.binary_bit.and.num tal.input = #tal.array.binary_bit.and.num2 tal.input run data modify storage t_algorithm_lib:array binary_bit.and.result append value 0


data remove storage t_algorithm_lib:array binary_bit.and.list[0]
data remove storage t_algorithm_lib:array binary_bit.and.list2[0]
scoreboard players remove #tal.array.binary_bit.and.time tal.input 1
execute if score #tal.array.binary_bit.and.time tal.input matches 1.. run function t_algorithm_lib:array/binary_bit/and/loop
