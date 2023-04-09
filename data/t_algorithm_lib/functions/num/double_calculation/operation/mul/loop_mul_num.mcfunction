scoreboard players add #tal.num.hpc.mul_zero_time tal.input 1
scoreboard players operation #tal.num.hpc.mul_zero_time_ tal.input = #tal.num.hpc.mul_zero_time tal.input

execute if score #tal.num.hpc.mul_zero_time_ tal.input matches 2.. run function t_algorithm_lib:num/double_calculation/operation/mul/add_zero


execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.mul.num1
execute store result score #tal.num.hpc.list_num2 tal.input run data get storage t_algorithm_lib:num double_calculation.mul.num2[-1]
execute if score #tal.num.hpc.list_count1 tal.input matches 1.. if score #tal.num.hpc.list_num2 tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/mul/loop

data modify storage t_algorithm_lib:num double_calculation.mul.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1_


data remove storage t_algorithm_lib:num double_calculation.mul.num2[-1]

execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.mul.num2

data modify storage t_algorithm_lib:num double_calculation.mul_result3 append from storage t_algorithm_lib:num double_calculation.mul_result2
data modify storage t_algorithm_lib:num double_calculation.mul_result3 append from storage t_algorithm_lib:num double_calculation.mul_result

data modify storage t_algorithm_lib:num double_calculation.mul_result set value []
data modify storage t_algorithm_lib:num double_calculation.mul_result2 set value []

execute if score #tal.num.hpc.list_count1 tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/mul/loop_mul_num

