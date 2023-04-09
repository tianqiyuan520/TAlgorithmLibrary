###sigmoid函数
## 1/(1+e^-x)
##[自定义输入] 自变量
# data modify storage t_algorithm_lib:num sigmoid.input set value 1.5d
##[返回结果]
data modify storage t_algorithm_lib:num sigmoid.result set value 1.5d
execute store result score #tal.num.sigmoid.num tal.input run data get storage t_algorithm_lib:num sigmoid.input 1000
scoreboard players set #-1 tal.input -1
data modify storage t_algorithm_lib:maths exp_operation.input.num set value 2.71828
execute store result storage t_algorithm_lib:maths exp_operation.input.power double 0.001 run scoreboard players operation #tal.num.sigmoid.num tal.input *= #-1 tal.input
function t_algorithm_lib:maths/exp_operation/start

data modify storage t_algorithm_lib:num double_calculation.operation set value 1
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set value ["1",".","0"]

data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
scoreboard players set #tal.num.hpc.division_precision tal.input 8
function t_algorithm_lib:num/double_calculation/operation/start

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
##[返回结果]
data modify storage t_algorithm_lib:maths exp_operation.result set from storage t_algorithm_lib:array double_array_to_double.result

data modify storage t_algorithm_lib:num sigmoid.result set from storage t_algorithm_lib:maths exp_operation.result

