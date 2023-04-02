##获取n
execute store result score #tal.num.double_factorial.num tal.input run data get storage t_algorithm_lib:num double_factorial.input.num
scoreboard players operation #tal.num.double_factorial.num tal.input /= #2 tal.input

##2^n*n!
execute store result storage t_algorithm_lib:num factorial_high.input.num double 1.0 run scoreboard players get #tal.num.double_factorial.num tal.input
function t_algorithm_lib:num/factorial_high/start

data modify storage t_algorithm_lib:num double_factorial.result set from storage t_algorithm_lib:num double_calculation.temp.result

###快速幂运算（正整数）
##[自定义]底数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set value 2.0
##[自定义]指数
execute store result storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 double 1.0 run scoreboard players get #tal.num.double_factorial.num tal.input
##[自定义]精度 （0为scb计算，1为高精度）
scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.input 1
function t_algorithm_lib:num/exponentiation_by_squaring/start

data modify storage t_algorithm_lib:num double_calculation.operation set value 3
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num exponentiation_by_squaring.result
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result

data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:num double_factorial.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1

function t_algorithm_lib:num/double_calculation/operation/start




##end
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start


data modify storage t_algorithm_lib:num double_factorial.result set from storage t_algorithm_lib:array double_array_to_double.result
