##首元素判断
scoreboard players set #tal.array.find.num tal.str_parser 1
data modify storage t_algorithm_lib:array find.list_check set from storage t_algorithm_lib:array find.list[0]
execute store success score #tal.array.find.num tal.str_parser run data modify storage t_algorithm_lib:array find.list_check set from storage t_algorithm_lib:array find.list[0]

##如果匹配 进入二次遍历
##参数
execute if score #tal.array.find.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:array find.list3 set from storage t_algorithm_lib:array find.list2
##基础数组
execute if score #tal.array.find.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:array find.list4 set from storage t_algorithm_lib:array find.list
execute store result score #tal.array.find.list_count tal.str_parser run data get storage t_algorithm_lib:array find.list
execute store result score #tal.array.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:array find.list2
scoreboard players set #tal.array.find.success_count tal.str_parser 0
execute if score #tal.array.find.num tal.str_parser matches 0 if score #tal.array.find.list_count tal.str_parser matches 1.. if score #tal.array.find.list_count tal.str_parser >= #tal.array.find.list_count2 tal.str_parser run function t_algorithm_lib:array/find/loop2
execute store result score #tal.array.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:array find.list2
##如果全匹配
execute if score #tal.array.find.list_count2 tal.str_parser = #tal.array.find.success_count tal.str_parser run function t_algorithm_lib:array/find/match

execute unless score #tal.array.find.list_count2 tal.str_parser = #tal.array.find.success_count tal.str_parser run data remove storage t_algorithm_lib:array find.list[0]
scoreboard players add #tal.array.find.index tal.str_parser 1
execute store result score #tal.array.find.list_count tal.str_parser run data get storage t_algorithm_lib:array find.list
execute store result score #tal.array.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:array find.list2
execute if score #tal.array.find.list_count tal.str_parser matches 1.. if score #tal.array.find.list_count tal.str_parser >= #tal.array.find.list_count2 tal.str_parser run function t_algorithm_lib:array/find/loop