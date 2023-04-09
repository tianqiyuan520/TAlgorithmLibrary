##添加 0
data modify storage t_algorithm_lib:num double_calculation.mul_result2 append value 0
data modify storage t_algorithm_lib:num double_calculation.mul_result append value 0
# execute if score #tal.num.hpc.mul_zero_time_ tal.input matches 2.. run data modify storage t_algorithm_lib:num double_calculation.mul_result append value 0

scoreboard players remove #tal.num.hpc.mul_zero_time_ tal.input 1
execute if score #tal.num.hpc.mul_zero_time_ tal.input matches 2.. run function t_algorithm_lib:num/double_calculation/operation/mul/add_zero
