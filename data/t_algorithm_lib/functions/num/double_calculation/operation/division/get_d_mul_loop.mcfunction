scoreboard players add #tal.num.hpc.division_mul_time tal.input 1

execute if score #tal.num.hpc.division_mul_time tal.input matches 1 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[0]
execute if score #tal.num.hpc.division_mul_time tal.input matches 2 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[1]
execute if score #tal.num.hpc.division_mul_time tal.input matches 3 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[2]
execute if score #tal.num.hpc.division_mul_time tal.input matches 4 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[3]
execute if score #tal.num.hpc.division_mul_time tal.input matches 5 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[4]
execute if score #tal.num.hpc.division_mul_time tal.input matches 6 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[5]
execute if score #tal.num.hpc.division_mul_time tal.input matches 7 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[6]

execute if score #tal.num.hpc.division_mul_time tal.input matches 8 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[7]
execute if score #tal.num.hpc.division_mul_time tal.input matches 9 run data modify storage t_algorithm_lib:num double_calculation.division.num2_mul2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul[8]

##判断大小
data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.division.num1
data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.division.num2_mul2
function t_algorithm_lib:num/double_calculation/operation/check/start

##记录 乘数
execute if score #tal.num.hpc.check_s tal.input matches 1.. run data modify storage t_algorithm_lib:num double_calculation.division.num4 set from storage t_algorithm_lib:num double_calculation.division.num2_mul2
execute if score #tal.num.hpc.check_s tal.input matches 1.. run scoreboard players operation #tal.num.hpc.division_mul_1 tal.input = #tal.num.hpc.division_mul_time tal.input


scoreboard players operation #tal.num.hpc.division.last_check tal.input = #tal.num.hpc.check_s tal.input
execute if score #tal.num.hpc.division_mul_time tal.input matches ..8 if score #tal.num.hpc.check_s tal.input matches 2.. run function t_algorithm_lib:num/double_calculation/operation/division/get_d_mul_loop