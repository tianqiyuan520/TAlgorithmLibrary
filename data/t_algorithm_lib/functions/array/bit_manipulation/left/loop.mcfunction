data modify storage t_algorithm_lib:array bit_manipulationL.list append value 0
scoreboard players remove #tal.array.bit_manipulationL.number1 tal.input 1
execute if score #tal.array.bit_manipulationL.number1 tal.input matches 1.. run function t_algorithm_lib:array/bit_manipulation/left/loop
