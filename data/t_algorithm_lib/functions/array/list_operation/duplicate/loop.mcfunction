##查重
data modify storage t_algorithm_lib:array list_operation.duplicate.temp.list set from storage t_algorithm_lib:array list_operation.duplicate.result
execute store result score #tal.array.list_operation.duplicate.num tal.str_parser run data modify storage t_algorithm_lib:array list_operation.duplicate.temp.list[] set from storage t_algorithm_lib:array list_operation.duplicate.list[0]
execute store result score #tal.array.list_operation.duplicate.t tal.str_parser run data get storage t_algorithm_lib:array list_operation.duplicate.result

scoreboard players operation #tal.array.list_operation.duplicate.t tal.str_parser -= #tal.array.list_operation.duplicate.num tal.str_parser

#差量为0
execute if score #tal.array.list_operation.duplicate.t tal.str_parser matches 0 run data modify storage t_algorithm_lib:array list_operation.duplicate.result append from storage t_algorithm_lib:array list_operation.duplicate.list[0]
##
data remove storage t_algorithm_lib:array list_operation.duplicate.list[0]
scoreboard players remove #tal.array.list_operation.duplicate.time tal.str_parser 1
execute if score #tal.array.list_operation.duplicate.time tal.str_parser matches 1.. run function t_algorithm_lib:array/list_operation/duplicate/loop
