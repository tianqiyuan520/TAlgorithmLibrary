###拉普拉斯平滑
##分子加一,分母+1*样本总数
##[自定义输入]数组 观测的各个结果
data modify storage t_algorithm_lib:maths laplace_smoothing.input.list set value []
##[自定义输入]总数
data modify storage t_algorithm_lib:maths laplace_smoothing.input.num set value 0

execute store result score #tal.maths.laplace_smoothing.num tal.input run data get storage t_algorithm_lib:maths laplace_smoothing.input.num
execute store result score #tal.maths.laplace_smoothing.num2 tal.input store result score #tal.maths.laplace_smoothing.count tal.input run data modify storage t_algorithm_lib:maths laplace_smoothing.list set from storage t_algorithm_lib:maths laplace_smoothing.input.list
scoreboard players operation #tal.maths.laplace_smoothing.num tal.input += #tal.maths.laplace_smoothing.num2 tal.input
##循环+1
execute if score #tal.maths.laplace_smoothing.count tal.input matches 1.. run function t_algorithm_lib:maths/laplace_smoothing/loop

##[返回结果] （新的概率）
data modify storage t_algorithm_lib:maths laplace_smoothing.result set from storage t_algorithm_lib:maths laplace_smoothing.list
