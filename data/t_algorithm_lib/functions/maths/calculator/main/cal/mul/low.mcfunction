##乘法
execute store result score #tal.maths.calculator.num tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0] 1000
execute store result score #tal.maths.calculator.num2 tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][0] 1000

execute store result storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][] double 0.000001 run scoreboard players operation #tal.maths.calculator.num tal.str_parser *= #tal.maths.calculator.num2 tal.str_parser
