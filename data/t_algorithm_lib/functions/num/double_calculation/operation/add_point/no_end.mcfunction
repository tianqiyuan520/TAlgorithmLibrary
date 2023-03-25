data remove storage t_algorithm_lib:num double_calculation.add_point.list[-1]

execute store result score #tal.num.hpc.list_count tal.str_parser run data get storage t_algorithm_lib:num double_calculation.add_point.list
execute if score #tal.num.hpc.list_count tal.str_parser matches 0 if score #tal.num.hpc.add_point tal.str_parser matches 1.. run data modify storage t_algorithm_lib:num double_calculation.add_point.list prepend value 0

execute store result score #tal.num.hpc.list_count tal.str_parser run data get storage t_algorithm_lib:num double_calculation.add_point.list

scoreboard players remove #tal.num.hpc.add_point tal.str_parser 1
execute if score #tal.num.hpc.list_count tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/add_point/loop