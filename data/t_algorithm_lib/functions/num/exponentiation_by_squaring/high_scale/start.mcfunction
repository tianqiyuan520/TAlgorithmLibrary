data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num exponentiation_by_squaring.input.num
function t_algorithm_lib:array/double_to_array/start

data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[0].num1 set from storage t_algorithm_lib:string function_parser.temp.n1