##减法
# data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
# data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2
##进行补位
# data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.subtraction.num1
# data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.subtraction.num2

##进行小数补位
# execute unless score #tal.num.hpc.num1_p tal.input = #tal.num.hpc.num2_p tal.input run function t_algorithm_lib:num/double_calculation/operation/complement/point_loop

# function t_algorithm_lib:num/double_calculation/operation/complement/start

# data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.check.num1
# data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.check.num2

function t_algorithm_lib:num/double_calculation/operation/subtraction/start

data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.subtraction_result

function t_algorithm_lib:num/double_calculation/operation/remove_l/loop

##读取 小数点
data modify storage t_algorithm_lib:num double_calculation.add_point.list set from storage t_algorithm_lib:num double_calculation.remove_l.num1
scoreboard players operation #tal.num.hpc.add_point tal.input = #tal.num.hpc.num1_p tal.input


function t_algorithm_lib:num/double_calculation/operation/add_point/start

data modify storage t_algorithm_lib:num double_calculation.temp.result set from storage t_algorithm_lib:num double_calculation.add_point.result
