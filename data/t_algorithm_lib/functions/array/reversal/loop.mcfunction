data modify storage t_algorithm_lib:array reversal.result prepend from storage t_algorithm_lib:array reversal.input[0]
data remove storage t_algorithm_lib:array reversal.input[0]
execute if data storage t_algorithm_lib:array reversal.input[0] run function t_algorithm_lib:array/reversal/loop