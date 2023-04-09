execute store result score #tal.maths.calculator.num2 tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][2][0][0] 1000

scoreboard players operation #tal.maths.calculator.num tal.input += #tal.maths.calculator.num2 tal.input



data remove storage t_algorithm_lib:maths calculator.main.stack[-1][2][0]

execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][2]
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/main/func/ab/loop
