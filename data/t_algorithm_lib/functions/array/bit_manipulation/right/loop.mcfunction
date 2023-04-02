data remove storage t_algorithm_lib:array bit_manipulationR.list[-1]
scoreboard players remove #tal.array.bit_manipulationR.number1 tal.input 1
execute if score #tal.array.bit_manipulationR.number1 tal.input matches 1.. run function t_algorithm_lib:array/bit_manipulation/right/loop
