##从左边移除不必要的 0
# data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.subtraction.num1

data remove storage t_algorithm_lib:num double_calculation.list_check.char
data modify storage t_algorithm_lib:num double_calculation.list_check.char set from storage t_algorithm_lib:num double_calculation.remove_l.num1[0]
data modify storage t_algorithm_lib:num double_calculation.list_check.char2 set from storage t_algorithm_lib:num double_calculation.remove_l.num1[1]
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:[0]} unless data storage t_algorithm_lib:num double_calculation.list_check{char2:['.']} run data remove storage t_algorithm_lib:num double_calculation.remove_l.num1[0]


execute if data storage t_algorithm_lib:num double_calculation.list_check{char:[0]} unless data storage t_algorithm_lib:num double_calculation.list_check{char2:['.']} run function t_algorithm_lib:num/double_calculation/operation/remove_l/loop2