
execute store result score #tal.maths.calculator.num tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-2][0] 1000
execute store result score #tal.maths.calculator.num2 tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-1][0] 1000


execute store result storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-2][] double 0.001 run scoreboard players operation #tal.maths.calculator.num tal.input += #tal.maths.calculator.num2 tal.input
