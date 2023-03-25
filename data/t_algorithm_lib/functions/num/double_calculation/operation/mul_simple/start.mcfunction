##乘法 多数字*单数字
##[1,3] * [2] = [2,6]
# data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
# data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2

##进行补位
# function t_algorithm_lib:num/double_calculation/operation/complement/start

#个位数
scoreboard players set #tal.num.hpc.mul_simple_extra tal.str_parser 0
#结果
data modify storage t_algorithm_lib:num double_calculation.mul_simple_result set value []
#后续需加法
data modify storage t_algorithm_lib:num double_calculation.mul_simple_result2 set value [0]

##逆序 循环
function t_algorithm_lib:num/double_calculation/operation/mul_simple/loop