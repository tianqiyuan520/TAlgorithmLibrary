data modify storage t_algorithm_lib:num double_calculation.add_point.result append value []
data modify storage t_algorithm_lib:num double_calculation.add_point.result[-1] append from storage t_algorithm_lib:num double_calculation.add_point.list[0]

# execute if score #tal.num.hpc.add_point tal.str_parser matches 1 if score #tal.num.hpc.ignore_eight tal.str_parser matches 1 if data storage t_algorithm_lib:num double_calculation.add_point.result[9] run function t_algorithm_lib:num/double_calculation/operation/division/add_point/ignore

execute if score #tal.num.hpc.add_point tal.str_parser matches 1 run data modify storage t_algorithm_lib:num double_calculation.add_point.result append value []
execute if score #tal.num.hpc.add_point tal.str_parser matches 1 run data modify storage t_algorithm_lib:num double_calculation.add_point.result[-1] append value '.'
# execute if score #tal.num.hpc.add_point tal.str_parser matches 1 run scoreboard players set #tal.num.hpc.add_point_end tal.str_parser 1


# execute if score #tal.num.hpc.add_point_end tal.str_parser matches 1 run function t_algorithm_lib:num/double_calculation/operation/division/add_point/end
execute if score #tal.num.hpc.add_point_end tal.str_parser matches 0 run function t_algorithm_lib:num/double_calculation/operation/division/add_point/no_end