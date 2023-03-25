data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.mul_result3[0]
data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.mul_result3[1]
function t_algorithm_lib:num/double_calculation/operation/add/start

##
data modify storage t_algorithm_lib:num double_calculation.mul_result3[0] set from storage t_algorithm_lib:num double_calculation.add_result
data remove storage t_algorithm_lib:num double_calculation.mul_result3[1]

execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.mul_result3
execute if score #tal.num.hpc.list_count1 tal.str_parser matches 2.. run function t_algorithm_lib:num/double_calculation/operation/mul/add_loop
