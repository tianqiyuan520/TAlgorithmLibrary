data modify storage t_algorithm_lib:num abs.input set from storage t_algorithm_lib:maths exp_operation.input.power
function t_algorithm_lib:num/abs/start
data modify storage t_algorithm_lib:maths exp_operation.input.power set from storage t_algorithm_lib:num abs.result
