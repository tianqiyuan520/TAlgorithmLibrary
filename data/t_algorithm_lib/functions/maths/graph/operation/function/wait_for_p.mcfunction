
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:string temp.preparation_chars
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:maths string_to_expression.input set from storage t_algorithm_lib:string_parser io.output
function t_algorithm_lib:maths/string_to_expression/start
data modify storage t_algorithm_lib:maths graph.operation.function.function set from storage t_algorithm_lib:maths string_to_expression.result

function t_algorithm_lib:maths/graph/operation/function/main/start
