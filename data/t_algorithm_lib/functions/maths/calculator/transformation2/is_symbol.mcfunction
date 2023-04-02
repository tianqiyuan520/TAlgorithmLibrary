##运算符
execute if score #tal.maths.calculator.symbol tal.input matches 3 run data modify storage t_algorithm_lib:maths calculator.transformation2.s1[-2] prepend value ['(']
execute if score #tal.maths.calculator.symbol tal.input matches 3 run data modify storage t_algorithm_lib:maths calculator.transformation2.s1[-2] append value [')']

data modify storage t_algorithm_lib:maths calculator.transformation2.s1[-2] append from storage t_algorithm_lib:maths calculator.transformation2.s3[0]
execute if score #tal.maths.calculator.symbol tal.input matches 2..3 run data modify storage t_algorithm_lib:maths calculator.transformation2.s1[-2] append value ['(']
data modify storage t_algorithm_lib:maths calculator.transformation2.s1[-2] append from storage t_algorithm_lib:maths calculator.transformation2.s1[-1][]
execute if score #tal.maths.calculator.symbol tal.input matches 2..3 run data modify storage t_algorithm_lib:maths calculator.transformation2.s1[-2] append value [')']

data remove storage t_algorithm_lib:maths calculator.transformation2.s1[-1]
