scoreboard players operation #tal.array.decimal_to_binary.num2 tal.str_parser = #tal.array.decimal_to_binary.num tal.str_parser
scoreboard players operation #tal.array.decimal_to_binary.num2 tal.str_parser %= #2 tal.str_parser
execute if score #tal.array.decimal_to_binary.num2 tal.str_parser matches 1 run data modify storage t_algorithm_lib:array decimal_to_binary.list prepend value 1
execute if score #tal.array.decimal_to_binary.num2 tal.str_parser matches 0 run data modify storage t_algorithm_lib:array decimal_to_binary.list prepend value 0

scoreboard players operation #tal.array.decimal_to_binary.num tal.str_parser /= #2 tal.str_parser


execute if score #tal.array.decimal_to_binary.num tal.str_parser matches 1.. run function t_algorithm_lib:array/decimal_to_binary/loop