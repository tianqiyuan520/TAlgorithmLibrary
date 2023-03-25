data modify storage t_algorithm_lib:maths calculator.temp.char set from storage t_algorithm_lib:maths calculator.main.stack[-1][0][0][0]

data modify storage t_algorithm_lib:maths calculator.temp.m set value []
data modify storage t_algorithm_lib:maths calculator.temp.n set from storage t_algorithm_lib:maths calculator.args
execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.n

function t_algorithm_lib:maths/calculator/main/check_unknown_loop



execute if data storage t_algorithm_lib:maths calculator.temp.m[0] run data modify storage t_algorithm_lib:maths calculator.main.stack[-1][0][0][] set from storage t_algorithm_lib:maths calculator.temp.m[-1]