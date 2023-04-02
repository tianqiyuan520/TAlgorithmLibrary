data modify storage t_algorithm_lib:num double_calculation.operation set value 4
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set value ["1",".","0"]

data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
scoreboard players set #tal.num.hpc.division_precision tal.input 8
function t_algorithm_lib:num/double_calculation/operation/start
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
##返回结果
data modify storage t_algorithm_lib:num exponentiation_by_squaring.result set from storage t_algorithm_lib:array double_array_to_double.result
