data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:string jaro_similarity.strB set from storage t_algorithm_lib:string_parser io.output

function t_algorithm_lib:string/jaro_similarity/start
