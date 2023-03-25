##绝对值
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths calculator.main.stack[-1][2][0]
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 0
function t_algorithm_lib:array/double_to_array/start
##[自定义输入]double_array
scoreboard players set #tal.array.DAToDouble.negative tal.str_parser 1
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_double/start

data modify storage t_algorithm_lib:maths calculator.main.fuc_value set from storage t_algorithm_lib:array double_array_to_double.result
