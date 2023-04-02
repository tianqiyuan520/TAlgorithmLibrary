##查重
data modify storage t_algorithm_lib:array list_operation.duplicate.temp.list set from storage t_algorithm_lib:array list_operation.duplicate.result
execute store result score #tal.array.list_operation.duplicate.num tal.input run data modify storage t_algorithm_lib:array list_operation.duplicate.temp.list[] set from storage t_algorithm_lib:array list_operation.duplicate.list[0]
execute store result score #tal.array.list_operation.duplicate.t tal.input run data get storage t_algorithm_lib:array list_operation.duplicate.result

scoreboard players operation #tal.array.list_operation.duplicate.t tal.input -= #tal.array.list_operation.duplicate.num tal.input

#差量为0
execute if score #tal.array.list_operation.duplicate.t tal.input matches 0 run data modify storage t_algorithm_lib:array list_operation.duplicate.result append from storage t_algorithm_lib:array list_operation.duplicate.list[0]
##
data remove storage t_algorithm_lib:array list_operation.duplicate.list[0]
scoreboard players remove #tal.array.list_operation.duplicate.time tal.input 1
execute if score #tal.array.list_operation.duplicate.time tal.input matches 1.. run function t_algorithm_lib:array/list_operation/duplicate/loop
