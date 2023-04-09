
##加法
data modify storage t_algorithm_lib:num double_calculation.operation set value 2
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num ln.return
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set value ['6', '.', '9', '0', '7', '7', '5', '5', '2', '7']
function t_algorithm_lib:num/double_calculation/operation/start
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start

data modify storage t_algorithm_lib:num ln.return set from storage t_algorithm_lib:array double_array_to_double.result
