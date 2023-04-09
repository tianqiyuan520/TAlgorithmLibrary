##添加小数点
# data modify storage t_algorithm_lib:num double_calculation.add_point.list set value [1,1,1,7]
data modify storage t_algorithm_lib:num double_calculation.add_point.result set value []
# scoreboard players set #tal.num.hpc.add_point tal.input 8
scoreboard players set #tal.num.hpc.add_point_end tal.input 0
function t_algorithm_lib:num/double_calculation/operation/add_point/loop