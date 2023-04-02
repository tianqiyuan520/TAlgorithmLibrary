
scoreboard players set #tal.num.hpc.division_mul_time tal.input 3

##判断大小
data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.division.num1
data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[4]
function t_algorithm_lib:num/double_calculation/operation/check/start

##记录 乘数
execute if score #tal.num.hpc.check_s tal.input matches 1.. run scoreboard players set #tal.num.hpc.division_mul_time tal.input 3
execute if score #tal.num.hpc.check_s tal.input matches 0 run scoreboard players set #tal.num.hpc.division_mul_time tal.input 0

execute if score #tal.num.hpc.check_s tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/division/get_d_mul_loop_f2
