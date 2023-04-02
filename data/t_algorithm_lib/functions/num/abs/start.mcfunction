###高精度绝对值
##[自定义]输入数字
# data modify storage t_algorithm_lib:num abs.input set value 1.5d
##返回结果
data modify storage t_algorithm_lib:num abs.result set value 1.5d
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num abs.input
function t_algorithm_lib:array/double_to_array/start
##[自定义输入]double_array
scoreboard players set #tal.array.DAToDouble.negative tal.input 1
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_double/start

data modify storage t_algorithm_lib:num abs.result set from storage t_algorithm_lib:array double_array_to_double.result