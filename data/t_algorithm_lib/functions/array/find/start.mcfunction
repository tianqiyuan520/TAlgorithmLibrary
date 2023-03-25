###判断 数组中 给定参数（数组）的 指针位置
##双循环遍历

##源数据 数组
execute unless data storage t_algorithm_lib:array find.list run data modify storage t_algorithm_lib:array find.list set value [3,2,1,2,3,1,3,1,2,3,9,10,2,1,2,99,1,3,2]
##参数
execute unless data storage t_algorithm_lib:array find.list2 run data modify storage t_algorithm_lib:array find.list2 set value [1,2,3]
##二次遍历的临时数组
data modify storage t_algorithm_lib:array find.list3 set value []
data modify storage t_algorithm_lib:array find.list4 set value []
##结果
data modify storage t_algorithm_lib:array find.return set value []
##指针
scoreboard players set #tal.array.find.index tal.str_parser 0

execute store result score #tal.array.find.list_count tal.str_parser run data get storage t_algorithm_lib:array find.list
execute store result score #tal.array.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:array find.list2
execute if score #tal.array.find.list_count tal.str_parser matches 1.. if score #tal.array.find.list_count tal.str_parser >= #tal.array.find.list_count2 tal.str_parser run function t_algorithm_lib:array/find/loop
