###gamma函数近似值
##用 斯特林公式近似
##[自定义输入] 实数n Double
# data modify storage t_algorithm_lib:maths gamma.input.num set value 3.2
##[返回结果]
data modify storage t_algorithm_lib:maths gamma.result set value 0.0
execute store result score #tal.maths.gamma.num1 tal.input run data get storage t_algorithm_lib:maths gamma.input.num 10000
execute store result storage t_algorithm_lib:maths stirling.input.num double 0.0001 run scoreboard players remove #tal.maths.gamma.num1 tal.input 10000
function t_algorithm_lib:maths/stirling/start

data modify storage t_algorithm_lib:maths gamma.result set from storage t_algorithm_lib:maths stirling.result
