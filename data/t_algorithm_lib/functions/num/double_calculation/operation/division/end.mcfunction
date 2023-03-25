##读取 小数点

data modify storage t_algorithm_lib:num double_calculation.add_point.list set from storage t_algorithm_lib:num double_calculation.division_result
scoreboard players operation #tal.num.hpc.add_point tal.str_parser = #tal.num.hpc.division.num_pr tal.str_parser

function t_algorithm_lib:num/double_calculation/operation/division/add_point/start


data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.add_point.result
function t_algorithm_lib:num/double_calculation/operation/remove_l/loop2
data modify storage t_algorithm_lib:num double_calculation.temp.result set from storage t_algorithm_lib:num double_calculation.remove_l.num1