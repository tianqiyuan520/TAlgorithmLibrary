execute store result score #tal.array.binary_bit.xor.num tal.input run data get storage t_algorithm_lib:array binary_bit.xor.list[0]
execute store result score #tal.array.binary_bit.xor.num2 tal.input run data get storage t_algorithm_lib:array binary_bit.xor.list2[0]

data modify storage t_algorithm_lib:array binary_bit.xor.result append value 0
execute if score #tal.array.binary_bit.xor.num tal.input matches 1 if score #tal.array.binary_bit.xor.num2 tal.input matches 0 run data modify storage t_algorithm_lib:array binary_bit.xor.result[-1] set value 1
execute if score #tal.array.binary_bit.xor.num tal.input matches 0 if score #tal.array.binary_bit.xor.num2 tal.input matches 1 run data modify storage t_algorithm_lib:array binary_bit.xor.result[-1] set value 1


data remove storage t_algorithm_lib:array binary_bit.xor.list[0]
data remove storage t_algorithm_lib:array binary_bit.xor.list2[0]
scoreboard players remove #tal.array.binary_bit.xor.time tal.input 1
execute if score #tal.array.binary_bit.xor.time tal.input matches 1.. run function t_algorithm_lib:array/binary_bit/xor/loop
