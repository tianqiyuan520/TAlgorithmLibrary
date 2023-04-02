###计数法去重
##[自定义]列表参数
# data modify storage t_algorithm_lib:array list_operation.duplicate.list set value [["1"],["333"],[3],[{a:1}],[3]]
data modify storage t_algorithm_lib:array list_operation.duplicate.result set value []
#
data modify storage t_algorithm_lib:array list_operation.duplicate.result append from storage t_algorithm_lib:array list_operation.duplicate.list[0]
data remove storage t_algorithm_lib:array list_operation.duplicate.list[0]
execute store result score #tal.array.list_operation.duplicate.time tal.input run data get storage t_algorithm_lib:array list_operation.duplicate.list
execute if score #tal.array.list_operation.duplicate.time tal.input matches 1.. run function t_algorithm_lib:array/list_operation/duplicate/loop
data modify storage t_algorithm_lib:array list_operation.duplicate.list set value []