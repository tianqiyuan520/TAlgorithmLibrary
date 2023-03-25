###实数的指数运算
##原理: a^b = x  => b = lnx/lna  =>  x = e^(b*lna)

##[自定义输入] 底数
# data modify storage t_algorithm_lib:maths exp_operation.input.num set value 3.2
##[自定义输入] 指数
# data modify storage t_algorithm_lib:maths exp_operation.input.power set value 2
##返回结果
data modify storage t_algorithm_lib:maths exp_operation.result set value 0.0
scoreboard players set #tal.maths.exp_operation.n tal.str_parser 690775

##[自定义输入]整数
execute store result score #tal.num.ln.num1 tal.str_parser run data get storage t_algorithm_lib:maths exp_operation.input.num 1000
function t_algorithm_lib:num/logarithm/ln/start
# scoreboard players set #10000 tal.str_parser 10000
# scoreboard players operation #tal.num.ln.result tal.str_parser *= #10000 tal.str_parser
scoreboard players operation #tal.num.ln.result tal.str_parser -= #tal.maths.exp_operation.n tal.str_parser

execute store result storage t_algorithm_lib:num temp.return double 0.00001 run scoreboard players get #tal.num.ln.result tal.str_parser

data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:3}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num temp.return
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result
#
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths exp_operation.input.power
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result
function t_algorithm_lib:num/double_calculation/operation/start
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
##
data modify storage t_algorithm_lib:maths exp_operation.power_ set from storage t_algorithm_lib:array double_array_to_double.result
execute store result score #tal.maths.exp_operation.num2 tal.str_parser run data get storage t_algorithm_lib:maths exp_operation.power_
##整数
execute store result storage t_algorithm_lib:maths exp_operation.power2 double 1.0 run data get storage t_algorithm_lib:maths exp_operation.power_ 1.0
##
execute store result score #tal.maths.exp_operation.power_ tal.str_parser run data get storage t_algorithm_lib:maths exp_operation.power_ 10000
scoreboard players set #10000 tal.str_parser 10000
scoreboard players operation #tal.maths.exp_operation.num2 tal.str_parser *= #10000 tal.str_parser
scoreboard players operation #tal.maths.exp_operation.power_ tal.str_parser -= #tal.maths.exp_operation.num2 tal.str_parser
##小数
execute store result storage t_algorithm_lib:maths exp_operation.power3 double 0.0001 run scoreboard players get #tal.maths.exp_operation.power_ tal.str_parser

##三阶泰勒
##f(x) = 1+x+x^2/2! + x^3/3!

data modify storage t_algorithm_lib:maths exp_operation.num_list set value [1.0]
data modify storage t_algorithm_lib:maths exp_operation.num_list append from storage t_algorithm_lib:maths exp_operation.power3
##1
##[自定义]底数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set from storage t_algorithm_lib:maths exp_operation.power3
##[自定义]指数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 set value 2
scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.str_parser 1
function t_algorithm_lib:num/exponentiation_by_squaring/start

execute store result score #tal.maths.exp_operation.num tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.result 100000000
scoreboard players set #2 tal.str_parser 2
scoreboard players operation #tal.maths.exp_operation.num tal.str_parser /= #2 tal.str_parser
##小数
execute store result storage t_algorithm_lib:num exponentiation_by_squaring.result double 0.00000001 run scoreboard players get #tal.maths.exp_operation.num tal.str_parser
data modify storage t_algorithm_lib:maths exp_operation.num_list append from storage t_algorithm_lib:num exponentiation_by_squaring.result
##2
##[自定义]底数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set from storage t_algorithm_lib:maths exp_operation.power3
##[自定义]指数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 set value 3
scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.str_parser 1
function t_algorithm_lib:num/exponentiation_by_squaring/start

execute store result score #tal.maths.exp_operation.num tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.result 100000000
scoreboard players set #6 tal.str_parser 6
scoreboard players operation #tal.maths.exp_operation.num tal.str_parser /= #6 tal.str_parser

##小数
execute store result storage t_algorithm_lib:num exponentiation_by_squaring.result double 0.00000001 run scoreboard players get #tal.maths.exp_operation.num tal.str_parser
data modify storage t_algorithm_lib:maths exp_operation.num_list append from storage t_algorithm_lib:num exponentiation_by_squaring.result
##2
##[自定义]底数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set from storage t_algorithm_lib:maths exp_operation.power3
##[自定义]指数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 set value 4
scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.str_parser 1
function t_algorithm_lib:num/exponentiation_by_squaring/start

execute store result score #tal.maths.exp_operation.num tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.result 100000000
scoreboard players set #24 tal.str_parser 24
scoreboard players operation #tal.maths.exp_operation.num tal.str_parser /= #24 tal.str_parser

##小数
execute store result storage t_algorithm_lib:num exponentiation_by_squaring.result double 0.00000001 run scoreboard players get #tal.maths.exp_operation.num tal.str_parser
data modify storage t_algorithm_lib:maths exp_operation.num_list append from storage t_algorithm_lib:num exponentiation_by_squaring.result
##3 相加
execute store result score #tal.maths.exp_operation.num tal.str_parser run data get storage t_algorithm_lib:maths exp_operation.num_list[0] 100000000
execute store result score #tal.maths.exp_operation.num2 tal.str_parser run data get storage t_algorithm_lib:maths exp_operation.num_list[1] 100000000
scoreboard players operation #tal.maths.exp_operation.num tal.str_parser += #tal.maths.exp_operation.num2 tal.str_parser
execute store result score #tal.maths.exp_operation.num2 tal.str_parser run data get storage t_algorithm_lib:maths exp_operation.num_list[2] 100000000
scoreboard players operation #tal.maths.exp_operation.num tal.str_parser += #tal.maths.exp_operation.num2 tal.str_parser
execute store result score #tal.maths.exp_operation.num2 tal.str_parser run data get storage t_algorithm_lib:maths exp_operation.num_list[3] 100000000
scoreboard players operation #tal.maths.exp_operation.num tal.str_parser += #tal.maths.exp_operation.num2 tal.str_parser
##新小数
execute store result storage t_algorithm_lib:num exponentiation_by_squaring.result double 0.00000001 run scoreboard players get #tal.maths.exp_operation.num tal.str_parser
data modify storage t_algorithm_lib:maths exp_operation.num_list append from storage t_algorithm_lib:num exponentiation_by_squaring.result



##f(x)*e^整数

##[自定义]底数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set value 2.71828
##[自定义]指数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 set from storage t_algorithm_lib:maths exp_operation.power2
scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.str_parser 1
function t_algorithm_lib:num/exponentiation_by_squaring/start

data modify storage t_algorithm_lib:maths exp_operation.num_list append from storage t_algorithm_lib:num exponentiation_by_squaring.result




##结尾
data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:3}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths exp_operation.num_list[-2]
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result
#
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths exp_operation.num_list[-1]
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result



function t_algorithm_lib:num/double_calculation/operation/start
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
##返回结果
data modify storage t_algorithm_lib:maths exp_operation.result set from storage t_algorithm_lib:array double_array_to_double.result