scoreboard players operation #tal.array.decimal_to_binary.num2 tal.input = #tal.array.decimal_to_binary.num tal.input
scoreboard players operation #tal.array.decimal_to_binary.num2 tal.input %= #2 tal.input
execute if score #tal.array.decimal_to_binary.num2 tal.input matches 1 run data modify storage t_algorithm_lib:array decimal_to_binary.list prepend value 1
execute if score #tal.array.decimal_to_binary.num2 tal.input matches 0 run data modify storage t_algorithm_lib:array decimal_to_binary.list prepend value 0

scoreboard players operation #tal.array.decimal_to_binary.num tal.input /= #2 tal.input


execute if score #tal.array.decimal_to_binary.num tal.input matches 1.. run function t_algorithm_lib:array/decimal_to_binary/loop