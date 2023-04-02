##幂运算
execute store result score #tal.maths.calculator.num tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0] 1000
execute store result score #tal.maths.calculator.num2 tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][0] 1000

scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.input 1
##[自定义]底数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set from storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0]
##[自定义]指数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 set from storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][0]
function t_algorithm_lib:num/exponentiation_by_squaring/start

data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][] set from storage t_algorithm_lib:num exponentiation_by_squaring.result
