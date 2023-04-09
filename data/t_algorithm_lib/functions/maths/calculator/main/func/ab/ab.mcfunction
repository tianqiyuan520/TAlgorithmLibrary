##ab 测试多元函数
##该函数为 多元函数
##定义：ab(x,x_1,x_2,...,x_n) = x+x_1+x_2+...+x_n
execute store result score #tal.maths.calculator.num tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][2][0][0] 1000
data remove storage t_algorithm_lib:maths calculator.main.stack[-1][2][0]
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][2]
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/main/func/ab/loop


execute store result storage t_algorithm_lib:maths calculator.main.fuc_value double 0.001 run scoreboard players get #tal.maths.calculator.num tal.input
