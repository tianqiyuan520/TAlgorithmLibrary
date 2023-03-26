data modify storage t_algorithm_lib:num double_calculation.operation set value 3
execute store result storage t_algorithm_lib:array double_to_array.num double 1.0 run scoreboard players get #tal.num.factorial_high.num tal.str_parser
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result


data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result
scoreboard players set #tal.num.hpc.ignore_eight tal.str_parser 1

function t_algorithm_lib:num/double_calculation/operation/start



scoreboard players add #tal.num.factorial_high.num tal.str_parser 1
scoreboard players remove #tal.num.factorial_high.max tal.str_parser 1

execute if score #tal.num.factorial_high.max tal.str_parser matches 2.. run function t_algorithm_lib:num/factorial_high/loop