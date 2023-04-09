###计数法 差集 (列表1 - 列表2) 
##[自定义]列表1参数
# data modify storage t_algorithm_lib:array list_operation.except.list set value [[1],[{a:"1"}],[233],["233"]]
##[自定义]列表2参数
# data modify storage t_algorithm_lib:array list_operation.except.list2 set value [[{a:"1"}]]
data modify storage t_algorithm_lib:array list_operation.except.result set value []
##判断列表2是否={} , A-{}=A
execute store result score #tal.array.list_operation.except.num tal.input run data get storage t_algorithm_lib:array list_operation.except.list2
execute if score #tal.array.list_operation.except.num tal.input matches 0 run data modify storage t_algorithm_lib:array list_operation.except.result append from storage t_algorithm_lib:array list_operation.except.list[]

execute store result score #tal.array.list_operation.except.time tal.input run data get storage t_algorithm_lib:array list_operation.except.list
execute if score #tal.array.list_operation.except.num tal.input matches 1.. if score #tal.array.list_operation.except.time tal.input matches 1.. run function t_algorithm_lib:array/list_operation/except/loop

##[自定义]列表1参数
data modify storage t_algorithm_lib:array list_operation.except.list set value []
##[自定义]列表2参数
data modify storage t_algorithm_lib:array list_operation.except.list2 set value []