###数组反转
##[自定义输入] 数组
# data modify storage t_algorithm_lib:array reversal.input set value []
##[返回结果]
data modify storage t_algorithm_lib:array reversal.result set value []
##
execute if data storage t_algorithm_lib:array reversal.input[0] run function t_algorithm_lib:array/reversal/loop
