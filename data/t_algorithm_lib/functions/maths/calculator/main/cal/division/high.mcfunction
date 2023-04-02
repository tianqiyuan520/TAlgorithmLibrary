data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:4}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0]
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:maths calculator.temp.n1 set value []
data modify storage t_algorithm_lib:maths calculator.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/calculator/main/cal/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:maths calculator.temp.n1
#
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][0]
function t_algorithm_lib:array/double_to_array/start

data modify storage t_algorithm_lib:maths calculator.temp.n1 set value []
data modify storage t_algorithm_lib:maths calculator.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/calculator/main/cal/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths calculator.temp.n1


function t_algorithm_lib:num/double_calculation/operation/start
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start

data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][] set from storage t_algorithm_lib:array double_array_to_double.result
