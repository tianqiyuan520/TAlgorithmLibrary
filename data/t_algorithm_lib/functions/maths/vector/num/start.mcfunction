##向量数乘

##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.num.vector1 set value [1,2,3]
##[自定义输入] 系数
# data modify storage t_algorithm_lib:maths vector.num.num set value 3.2d
##[返回结果] 一维数组
data modify storage t_algorithm_lib:maths vector.num.result set value []


execute store result score #tal.maths.vector.num.loop tal.input run data get storage t_algorithm_lib:maths vector.num.vector1
execute if score #tal.maths.vector.num.loop tal.input matches 1.. run function t_algorithm_lib:maths/vector/num/loop
