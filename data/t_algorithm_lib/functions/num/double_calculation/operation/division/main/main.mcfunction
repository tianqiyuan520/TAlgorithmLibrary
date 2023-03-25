scoreboard players remove #tal.num.hpc.division_time tal.str_parser 1




##判断该值是否满足>除数
data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.division.num1
data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.division.num2
function t_algorithm_lib:num/double_calculation/operation/check/start

execute if score #tal.num.hpc.check_s tal.str_parser matches 0 run function t_algorithm_lib:num/double_calculation/operation/division/main/fill
# execute if score #tal.num.hpc.check_s tal.str_parser matches 0 run data modify storage t_algorithm_lib:num double_calculation.division_result append value 0

##大于则执行 选择结果
execute if score #tal.num.hpc.check_s tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/division/get_d_mul


