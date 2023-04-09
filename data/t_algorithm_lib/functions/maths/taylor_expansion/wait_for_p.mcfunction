
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:maths taylor_expansion.preparation_chars
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:maths taylor_expansion.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:maths taylor_expansion.input set from storage t_algorithm_lib:string_parser io.output
##全部x变为a
# data modify storage t_algorithm_lib:maths taylor_expansion.input2 set value []
# function t_algorithm_lib:maths/taylor_expansion/loop_change_x_to_a
# data modify storage t_algorithm_lib:maths taylor_expansion.input set from storage t_algorithm_lib:maths taylor_expansion.input2

##开始逐步
function t_algorithm_lib:maths/taylor_expansion/start