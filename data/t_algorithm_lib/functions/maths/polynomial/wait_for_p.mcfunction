
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:maths temp.preparation_chars
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:maths temp.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:maths polynomial.input set from storage t_algorithm_lib:string_parser io.output


##化简多项式
function t_algorithm_lib:maths/polynomial/simplify/start