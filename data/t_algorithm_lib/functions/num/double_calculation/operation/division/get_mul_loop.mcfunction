scoreboard players add #tal.num.hpc.division_mul_time tal.str_parser 1

##计算乘法
# data modify storage t_algorithm_lib:num double_calculation.division.num3 set from storage t_algorithm_lib:num double_calculation.division.num2
# data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.division.num3
# data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [0]
# execute store result storage t_algorithm_lib:num double_calculation.mul_simple.num2[0] int 1 run scoreboard players get #tal.num.hpc.division_mul_time tal.str_parser
# function t_algorithm_lib:num/double_calculation/operation/mul_simple/start

##计算加法
data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[-1]
data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[0]
function t_algorithm_lib:num/double_calculation/operation/add/start


data modify storage t_algorithm_lib:num double_calculation.division.num2_mul append from storage t_algorithm_lib:num double_calculation.add_result


execute if score #tal.num.hpc.division_mul_time tal.str_parser matches ..8 run function t_algorithm_lib:num/double_calculation/operation/division/get_mul_loop