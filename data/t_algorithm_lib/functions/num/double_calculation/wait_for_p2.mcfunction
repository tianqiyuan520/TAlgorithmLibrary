
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:num temp.preparation_chars
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:num temp.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:string_parser io.output

function t_algorithm_lib:num/double_calculation/operation/start
