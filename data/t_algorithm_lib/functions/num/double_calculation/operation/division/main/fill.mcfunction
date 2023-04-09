##补位
data modify storage t_algorithm_lib:num double_calculation.division_result append value 0
data modify storage t_algorithm_lib:num double_calculation.division.num1 append from storage t_algorithm_lib:num double_calculation.division.num1_[0]
# execute if data storage t_algorithm_lib:num double_calculation.division.num1_[0] run scoreboard players add #tal.num.hpc.division.num_pr tal.input 1
execute store result score #tal.num.hpc.division.num tal.input run data get storage t_algorithm_lib:num double_calculation.division.num1_
execute if score #tal.num.hpc.division.num tal.input matches 0 if score #tal.num.hpc.division.num_add_p tal.input matches 0 run function t_algorithm_lib:num/double_calculation/operation/division/main/get_point
execute if score #tal.num.hpc.division.num tal.input matches 0 run data modify storage t_algorithm_lib:num double_calculation.division.num1 append value 0

data remove storage t_algorithm_lib:num double_calculation.division.num1_[0]