##预先添加
data modify storage t_algorithm_lib:num double_calculation.division.num1 append from storage t_algorithm_lib:num double_calculation.division.num1_[0]
execute if data storage t_algorithm_lib:num double_calculation.division.num1_[0] run scoreboard players add #tal.num.hpc.division.num_pr tal.input 1
execute unless data storage t_algorithm_lib:num double_calculation.division.num1_[0] run data modify storage t_algorithm_lib:num double_calculation.division.num1 append value 0
data remove storage t_algorithm_lib:num double_calculation.division.num1_[0]

scoreboard players remove #tal.num.hpc.list_count2 tal.input 1
execute if score #tal.num.hpc.list_count2 tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/division/add_loop