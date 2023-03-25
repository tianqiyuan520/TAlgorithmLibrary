##计数法 判断给定元素 是否在 给定列表中
##[自定义]列表参数
# data modify storage t_algorithm_lib:array list_operation.in.list set value [3,2,5,6,9]
##[自定义]元素参数
# data modify storage t_algorithm_lib:array list_operation.in.element set value 1
data modify storage t_algorithm_lib:array list_operation.in.result set value false
##查重
execute store result score #tal.array.list_operation.in.total tal.str_parser run data get storage t_algorithm_lib:array list_operation.in.list
execute store result score #tal.array.list_operation.in.num tal.str_parser run data modify storage t_algorithm_lib:array list_operation.in.list[] set from storage t_algorithm_lib:array list_operation.in.element
scoreboard players operation #tal.array.list_operation.in.total tal.str_parser -= #tal.array.list_operation.in.num tal.str_parser
#差量为1..
execute if score #tal.array.list_operation.in.total tal.str_parser matches 1.. run data modify storage t_algorithm_lib:array list_operation.in.result set value true


##[自定义]列表参数
data modify storage t_algorithm_lib:array list_operation.in.list set value []
##[自定义]元素参数
data modify storage t_algorithm_lib:array list_operation.in.element set value ""