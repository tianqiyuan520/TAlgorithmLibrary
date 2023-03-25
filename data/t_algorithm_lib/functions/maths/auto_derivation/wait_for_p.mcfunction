
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:maths auto_derivation.preparation_chars
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:maths auto_derivation.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:maths auto_derivation.input set from storage t_algorithm_lib:string_parser io.output

##开始求导
function t_algorithm_lib:maths/auto_derivation/start