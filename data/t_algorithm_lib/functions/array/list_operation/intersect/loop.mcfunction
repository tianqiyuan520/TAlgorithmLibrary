##查重
data modify storage t_algorithm_lib:array list_operation.intersect.temp.list set from storage t_algorithm_lib:array list_operation.intersect.list2
execute store result score #tal.array.list_operation.intersect.num tal.input run data modify storage t_algorithm_lib:array list_operation.intersect.temp.list[] set from storage t_algorithm_lib:array list_operation.intersect.list[0]
execute store result score #tal.array.list_operation.intersect.t tal.input run data get storage t_algorithm_lib:array list_operation.intersect.list2

scoreboard players operation #tal.array.list_operation.intersect.t tal.input -= #tal.array.list_operation.intersect.num tal.input

#差量为1..
execute if score #tal.array.list_operation.intersect.t tal.input matches 1.. run data modify storage t_algorithm_lib:array list_operation.intersect.result append from storage t_algorithm_lib:array list_operation.intersect.list[0]
##
data remove storage t_algorithm_lib:array list_operation.intersect.list[0]
scoreboard players remove #tal.array.list_operation.intersect.time tal.input 1
execute if score #tal.array.list_operation.intersect.time tal.input matches 1.. run function t_algorithm_lib:array/list_operation/intersect/loop
