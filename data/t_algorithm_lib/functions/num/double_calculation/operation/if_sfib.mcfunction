##如果有科学计数法
data modify storage t_algorithm_lib:array temp.list set from storage t_algorithm_lib:num double_calculation.temp.list_s
function t_algorithm_lib:array/num_array_to_num/start
scoreboard players operation #tal.num.hpc.num3 tal.str_parser = #tal.array.temp.num tal.str_parser
scoreboard players add #tal.num.hpc.num3 tal.str_parser 1
data modify storage t_algorithm_lib:num double_calculation.temp.list__ set value []
scoreboard players set #tal.num.hpc.num3_ tal.str_parser 1

function t_algorithm_lib:num/double_calculation/operation/sfib_loop

data modify storage t_algorithm_lib:num double_calculation.temp.list_ set from storage t_algorithm_lib:num double_calculation.temp.list__
