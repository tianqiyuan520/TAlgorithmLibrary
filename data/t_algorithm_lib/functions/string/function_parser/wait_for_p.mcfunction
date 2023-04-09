
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:string temp.preparation_chars
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:string function_parser.input set from storage t_algorithm_lib:string_parser io.output


##开始解析成计算式
function t_algorithm_lib:string/function_parser/parser/start