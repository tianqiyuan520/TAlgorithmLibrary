##查重
data modify storage t_algorithm_lib:array list_operation.intersect.temp.list set from storage t_algorithm_lib:array list_operation.intersect.list2
execute store result score #tal.array.list_operation.intersect.num tal.str_parser run data modify storage t_algorithm_lib:array list_operation.intersect.temp.list[] set from storage t_algorithm_lib:array list_operation.intersect.list[0]
execute store result score #tal.array.list_operation.intersect.t tal.str_parser run data get storage t_algorithm_lib:array list_operation.intersect.list2

scoreboard players operation #tal.array.list_operation.intersect.t tal.str_parser -= #tal.array.list_operation.intersect.num tal.str_parser

#差量为1..
execute if score #tal.array.list_operation.intersect.t tal.str_parser matches 1.. run data modify storage t_algorithm_lib:array list_operation.intersect.result append from storage t_algorithm_lib:array list_operation.intersect.list[0]
##
data remove storage t_algorithm_lib:array list_operation.intersect.list[0]
scoreboard players remove #tal.array.list_operation.intersect.time tal.str_parser 1
execute if score #tal.array.list_operation.intersect.time tal.str_parser matches 1.. run function t_algorithm_lib:array/list_operation/intersect/loop
