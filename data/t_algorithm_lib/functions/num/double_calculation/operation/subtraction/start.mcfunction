##减法
# data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
# data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2

##进行补位
data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.subtraction.num1
data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.subtraction.num2
function t_algorithm_lib:num/double_calculation/operation/complement/start


data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.check.num1
data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.check.num2

#进位
scoreboard players set #tal.num.hpc.subtraction_extra tal.str_parser 0
##0的个数
scoreboard players set #tal.num.hpc.subtraction_zero tal.str_parser 0
#结果
data modify storage t_algorithm_lib:num double_calculation.subtraction_result set value []

##逆序 循环
function t_algorithm_lib:num/double_calculation/operation/subtraction/loop

execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.subtraction_result
execute if score #tal.num.hpc.subtraction_zero tal.str_parser = #tal.num.hpc.list_count1 tal.str_parser run data modify storage t_algorithm_lib:num double_calculation.subtraction_result set value [0]