##添加小数点
# data modify storage t_algorithm_lib:num double_calculation.add_point.list set value [1,1,1,7]
data modify storage t_algorithm_lib:num double_calculation.add_point.result set value []
# scoreboard players set #tal.num.hpc.add_point tal.str_parser 8
scoreboard players set #tal.num.hpc.add_point_end tal.str_parser 0
function t_algorithm_lib:num/double_calculation/operation/division/add_point/loop
