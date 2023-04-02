###高精度相反数
##先解析成数组，然后再转double

##[自定义]输入数字
# data modify storage t_algorithm_lib:num opposite_num.input set value 1.5d
##返回结果 Double
data modify storage t_algorithm_lib:num opposite_num.result set value 0.0

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num opposite_num.input
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
##[自定义输入]double_array
execute if score #tal.array.double_to_array.negative tal.input matches 0 run scoreboard players set #tal.array.DAToDouble.negative tal.input -1
execute if score #tal.array.double_to_array.negative tal.input matches 1 run scoreboard players set #tal.array.DAToDouble.negative tal.input 1
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_double/start

data modify storage t_algorithm_lib:num opposite_num.result set from storage t_algorithm_lib:array double_array_to_double.result
