data modify storage t_algorithm_lib:num double_calculation.add_point.result prepend value []
data modify storage t_algorithm_lib:num double_calculation.add_point.result[0] append from storage t_algorithm_lib:num double_calculation.add_point.list[-1]

execute if score #tal.num.hpc.add_point tal.str_parser matches 1 if score #tal.num.hpc.ignore_eight tal.str_parser matches 1 if data storage t_algorithm_lib:num double_calculation.add_point.result[9] run function t_algorithm_lib:num/double_calculation/operation/add_point/ignore

execute if score #tal.num.hpc.add_point tal.str_parser matches 1 run data modify storage t_algorithm_lib:num double_calculation.add_point.result prepend value []
execute if score #tal.num.hpc.add_point tal.str_parser matches 1 run data modify storage t_algorithm_lib:num double_calculation.add_point.result[0] append value '.'
# execute if score #tal.num.hpc.add_point tal.str_parser matches 1 run scoreboard players set #tal.num.hpc.add_point_end tal.str_parser 1


# execute if score #tal.num.hpc.add_point_end tal.str_parser matches 1 run function t_algorithm_lib:num/double_calculation/operation/add_point/end
execute if score #tal.num.hpc.add_point_end tal.str_parser matches 0 run function t_algorithm_lib:num/double_calculation/operation/add_point/no_end
