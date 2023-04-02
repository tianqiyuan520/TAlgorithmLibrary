###斯特林公式（正实数n的阶乘）(0,无穷]
##(2*pi*n)^1/2  *  (n/e)^n
##(2*pi*n)^1/2 * e^(-n+nln(n))
##[自定义输入] 实数n Double
# data modify storage t_algorithm_lib:maths stirling.input.num set value 3.2
##返回结果
data modify storage t_algorithm_lib:maths stirling.result set value 0.0
##临时存储
data modify storage t_algorithm_lib:maths stirling.list set value [[],[],[]]
##(2*pi*n)
data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:3}
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths stirling.input.num
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result
data modify storage t_algorithm_lib:maths stirling.list[0] set from storage t_algorithm_lib:array double_array_to_string_array.result

data modify storage t_algorithm_lib:num double_calculation.temp.num2 set value ['6', '.', '2', '8', '3', '1', '8', '5', '3']
function t_algorithm_lib:num/double_calculation/operation/start
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start

##(2*pi*n)^1/2
##开根
# data modify storage t_algorithm_lib:maths sqrt.input set from storage t_algorithm_lib:array double_array_to_double.result
# function t_algorithm_lib:maths/sqrt/start
##[自定义输入] 底数
data modify storage t_algorithm_lib:maths exp_operation.input.num set from storage t_algorithm_lib:array double_array_to_double.result
##[自定义输入] 指数
data modify storage t_algorithm_lib:maths exp_operation.input.power set value 0.5
function t_algorithm_lib:maths/exp_operation/start

data modify storage t_algorithm_lib:maths stirling.list[1] set from storage t_algorithm_lib:num double_calculation.temp.result

##nln(n)

scoreboard players set #tal.maths.stirling.n tal.input 690775

##[自定义输入]整数
execute store result score #tal.num.ln.num1 tal.input run data get storage t_algorithm_lib:maths stirling.input.num 1000
# function t_algorithm_lib:num/logarithm/ln/start
scoreboard players set #tal.num.ln.is_1000 tal.input 0
##[自定义输入]高精度
scoreboard players set #tal.num.ln.scal tal.input 0
function t_algorithm_lib:num/logarithm/ln/start
scoreboard players operation #tal.num.ln.result tal.input -= #tal.maths.stirling.n tal.input
scoreboard players remove #tal.num.ln.result tal.input 100000



##n*(ln(n) - 1)
data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:3}
execute store result storage t_algorithm_lib:array double_to_array.num double 0.00001 run scoreboard players get #tal.num.ln.result tal.input
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result

data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths stirling.list[0]
function t_algorithm_lib:num/double_calculation/operation/start
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start


##e^(n*(ln n - 1))
##[自定义输入] 底数
data modify storage t_algorithm_lib:maths exp_operation.input.num set value 2.7182818
##[自定义输入] 指数
data modify storage t_algorithm_lib:maths exp_operation.input.power set from storage t_algorithm_lib:array double_array_to_double.result
function t_algorithm_lib:maths/exp_operation/start
data modify storage t_algorithm_lib:maths stirling.list[2] set from storage t_algorithm_lib:num double_calculation.temp.result


##end
data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:3}

data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:maths stirling.list[1]
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result

data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:maths stirling.list[2]
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result

function t_algorithm_lib:num/double_calculation/operation/start
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start


data modify storage t_algorithm_lib:maths stirling.result set from storage t_algorithm_lib:array double_array_to_double.result
