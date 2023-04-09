data modify storage t_algorithm_lib:array binary_bit.shr.result append value 0

scoreboard players remove #tal.array.binary_bit.shr.time tal.input 1
execute if score #tal.array.binary_bit.shr.time tal.input matches 1.. if score #tal.array.binary_bit.shr.end tal.input matches 0 run function t_algorithm_lib:array/binary_bit/shr/loop
