
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:maths integrate.preparation_chars
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:maths integrate.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:maths integrate.input set from storage t_algorithm_lib:string_parser io.output



##开始积分
function t_algorithm_lib:maths/integrate/indefinite_integral/start