##忽略小数8位以后
data modify storage t_algorithm_lib:num double_calculation.add_point.result2 set from storage t_algorithm_lib:num double_calculation.add_point.result
data modify storage t_algorithm_lib:num double_calculation.add_point.result set value []
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[0]
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[1]
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[2]
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[3]
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[4]
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[5]
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[6]
data modify storage t_algorithm_lib:num double_calculation.add_point.result append from storage t_algorithm_lib:num double_calculation.add_point.result2[7]
data modify storage t_algorithm_lib:num double_calculation.add_point.result2 set value []
scoreboard players set #tal.num.hpc.add_point_end tal.str_parser 1
