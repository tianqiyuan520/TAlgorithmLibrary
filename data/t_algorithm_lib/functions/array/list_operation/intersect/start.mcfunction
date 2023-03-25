###计数法 交集 (无去重)
##[自定义]列表1参数
# data modify storage t_algorithm_lib:array list_operation.intersect.list set value [1,2,3]
##[自定义]列表2参数
# data modify storage t_algorithm_lib:array list_operation.intersect.list2 set value [4,2,3]
data modify storage t_algorithm_lib:array list_operation.intersect.result set value []
##判断列表2是否={} , A交{}=空
execute store result score #tal.array.list_operation.intersect.num tal.str_parser run data get storage t_algorithm_lib:array list_operation.intersect.list2
execute if score #tal.array.list_operation.intersect.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:array list_operation.intersect.result set value []

execute store result score #tal.array.list_operation.intersect.time tal.str_parser run data get storage t_algorithm_lib:array list_operation.intersect.list
execute if score #tal.array.list_operation.intersect.num tal.str_parser matches 1.. if score #tal.array.list_operation.intersect.time tal.str_parser matches 1.. run function t_algorithm_lib:array/list_operation/intersect/loop

##[自定义]列表1参数
data modify storage t_algorithm_lib:array list_operation.intersect.list set value []
##[自定义]列表2参数
data modify storage t_algorithm_lib:array list_operation.intersect.list2 set value []