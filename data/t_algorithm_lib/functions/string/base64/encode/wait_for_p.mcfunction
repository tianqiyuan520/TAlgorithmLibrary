
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter
#获取解析后的式子
data modify storage t_algorithm_lib:string base64.encode.input set from storage t_algorithm_lib:string_parser io.output

##开始解析成计算式
function t_algorithm_lib:string/base64/encode/start