##加法
# data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
# data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2

##进行补位
data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.add.num1
data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.add.num2
function t_algorithm_lib:num/double_calculation/operation/complement/start



data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.check.num1
data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.check.num2


#进位
scoreboard players set #tal.num.hpc.add_extra tal.str_parser 0
#结果
data modify storage t_algorithm_lib:num double_calculation.add_result set value []

##逆序 循环
function t_algorithm_lib:num/double_calculation/operation/add/loop