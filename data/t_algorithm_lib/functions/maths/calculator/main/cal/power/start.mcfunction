##幂运算
execute store result score #tal.maths.calculator.num tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-2][0] 1000
execute store result score #tal.maths.calculator.num2 tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-1][0] 1000


data modify storage t_algorithm_lib:maths exp_operation.input.num set from storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-2][0]
data modify storage t_algorithm_lib:maths exp_operation.input.power set from storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-1][0]
##判断指数正负
function t_algorithm_lib:maths/exp_operation/start

data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-2][] set from storage t_algorithm_lib:maths exp_operation.result