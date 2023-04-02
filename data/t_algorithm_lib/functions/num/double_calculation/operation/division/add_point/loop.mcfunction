data modify storage t_algorithm_lib:num double_calculation.add_point.result append value []
data modify storage t_algorithm_lib:num double_calculation.add_point.result[-1] append from storage t_algorithm_lib:num double_calculation.add_point.list[0]

# execute if score #tal.num.hpc.add_point tal.input matches 1 if score #tal.num.hpc.ignore_eight tal.input matches 1 if data storage t_algorithm_lib:num double_calculation.add_point.result[9] run function t_algorithm_lib:num/double_calculation/operation/division/add_point/ignore

execute if score #tal.num.hpc.add_point tal.input matches 1 run data modify storage t_algorithm_lib:num double_calculation.add_point.result append value ['.']
execute store result score #tal.num.hpc.list_count tal.input run data get storage t_algorithm_lib:num double_calculation.add_point.list
execute if score #tal.num.hpc.add_point tal.input matches 1 if score #tal.num.hpc.list_count tal.input matches 1 run data modify storage t_algorithm_lib:num double_calculation.add_point.result append value [0]

# execute if score #tal.num.hpc.add_point tal.input matches 1 run scoreboard players set #tal.num.hpc.add_point_end tal.input 1


# execute if score #tal.num.hpc.add_point_end tal.input matches 1 run function t_algorithm_lib:num/double_calculation/operation/division/add_point/end
execute if score #tal.num.hpc.add_point_end tal.input matches 0 run function t_algorithm_lib:num/double_calculation/operation/division/add_point/no_end
