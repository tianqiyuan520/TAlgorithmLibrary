scoreboard players set #tal.num.hpc.is_cal tal.input 0
data modify storage t_algorithm_lib:num double_calculation.mul_results_ set value []

execute if score #tal.num.hpc.list_num2 tal.input matches 1 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.1

execute if score #tal.num.hpc.list_num2 tal.input matches 2 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.2

execute if score #tal.num.hpc.list_num2 tal.input matches 3 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.3

execute if score #tal.num.hpc.list_num2 tal.input matches 4 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.4

execute if score #tal.num.hpc.list_num2 tal.input matches 5 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.5

execute if score #tal.num.hpc.list_num2 tal.input matches 6 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.6

execute if score #tal.num.hpc.list_num2 tal.input matches 7 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.7

execute if score #tal.num.hpc.list_num2 tal.input matches 8 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.8

execute if score #tal.num.hpc.list_num2 tal.input matches 9 run data modify storage t_algorithm_lib:num double_calculation.mul_results_ set from storage t_algorithm_lib:num double_calculation.mul_results.list.9
