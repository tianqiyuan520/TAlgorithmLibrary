
execute store success score #tal.maths.calculator.num tal.input run data modify storage t_algorithm_lib:maths calculator.temp.n[0].id set from storage t_algorithm_lib:maths calculator.temp.char
execute if score #tal.maths.calculator.num tal.input matches 0 run data modify storage t_algorithm_lib:maths calculator.temp.m append from storage t_algorithm_lib:maths calculator.temp.n[0].value

scoreboard players remove #tal.maths.calculator.list_count tal.input 1
data remove storage t_algorithm_lib:maths calculator.temp.n[0]
execute if score #tal.maths.calculator.num tal.input matches 1 if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/main/check_unknown_loop