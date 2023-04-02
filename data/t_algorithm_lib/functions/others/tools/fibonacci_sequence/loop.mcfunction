scoreboard players remove #tal.fibonacci_sequence.index tal.input 1

execute store result score #tal.fibonacci_sequence.num1 tal.input run data get storage t_algorithm_lib:others fibonacci_sequence.list[-2]
execute store result score #tal.fibonacci_sequence.num2 tal.input run data get storage t_algorithm_lib:others fibonacci_sequence.list[-1]
scoreboard players operation #tal.fibonacci_sequence.num1 tal.input += #tal.fibonacci_sequence.num2 tal.input

data modify storage t_algorithm_lib:others fibonacci_sequence.list append value 1
execute store result storage t_algorithm_lib:others fibonacci_sequence.list[-1] int 1 run scoreboard players get #tal.fibonacci_sequence.num1 tal.input
execute if score #tal.fibonacci_sequence.index tal.input matches 0 run data modify storage t_algorithm_lib:others fibonacci_sequence.return set from storage t_algorithm_lib:others fibonacci_sequence.list[-1]
execute if score #tal.fibonacci_sequence.index tal.input matches 1.. run function t_algorithm_lib:others/tools/fibonacci_sequence/loop

