data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:3}
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].return
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].return
scoreboard players set #tal.num.hpc.ignore_eight tal.str_parser 1
function t_algorithm_lib:num/double_calculation/operation/start

data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-2].is_return set value 1
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-2].return set from storage t_algorithm_lib:string function_parser.temp.n1

data remove storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1]
