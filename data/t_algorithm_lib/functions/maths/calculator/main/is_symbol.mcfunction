##运算符

##运算
execute if score #tal.maths.calculator.symbol tal.str_parser matches 1 run function t_algorithm_lib:maths/calculator/main/cal/add/start
execute if score #tal.maths.calculator.symbol tal.str_parser matches 2 run function t_algorithm_lib:maths/calculator/main/cal/subtraction/start
execute if score #tal.maths.calculator.symbol tal.str_parser matches 3 run function t_algorithm_lib:maths/calculator/main/cal/mul/start
execute if score #tal.maths.calculator.symbol tal.str_parser matches 4 run function t_algorithm_lib:maths/calculator/main/cal/division/start
execute if score #tal.maths.calculator.symbol tal.str_parser matches 5 run function t_algorithm_lib:maths/calculator/main/cal/power/start
execute if score #tal.maths.calculator.symbol tal.str_parser matches 6 run function t_algorithm_lib:maths/calculator/main/cal/factorial/start


data remove storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1]
