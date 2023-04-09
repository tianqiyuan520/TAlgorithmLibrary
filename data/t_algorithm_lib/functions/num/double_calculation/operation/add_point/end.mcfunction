data remove storage t_algorithm_lib:num double_calculation.add_point.list[-1]

data modify storage t_algorithm_lib:num double_calculation.add_point.result_ set from storage t_algorithm_lib:num double_calculation.add_point.list
data modify storage t_algorithm_lib:num double_calculation.add_point.result_[] set value []
data modify storage t_algorithm_lib:num double_calculation.add_point.result_[] append from storage t_algorithm_lib:num double_calculation.add_point.list

data modify storage t_algorithm_lib:num double_calculation.add_point.result prepend value []
data modify storage t_algorithm_lib:num double_calculation.add_point.result[0] append from storage t_algorithm_lib:num double_calculation.add_point.list[-1]