###Double信息（整数，小数，符号位）

##[自定义输入] 实数
# data modify storage t_algorithm_lib:num double_info.input.num set value 2.0d
##
data modify storage t_algorithm_lib:num double_info.result set value {sign:"+",int:[],Dec:[]}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num double_info.input.num
function t_algorithm_lib:array/double_to_array/start
##获取整数
scoreboard players set #tal.num.double_info.num1 tal.input 0
data modify storage t_algorithm_lib:num double_info.temp set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:num/double_info/get_int

##获取小数
data modify storage t_algorithm_lib:num double_info.result.Dec append from storage t_algorithm_lib:num double_info.temp[][0]

##[返回结果] {sign:"符号位",int:[整数位],Dec:[小数位]}
# data get storage t_algorithm_lib:num double_info.result