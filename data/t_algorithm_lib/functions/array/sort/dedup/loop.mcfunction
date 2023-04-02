##判断重复
##数据
data modify storage t_algorithm_lib:array get_element_index.element set from storage t_algorithm_lib:array dedup.list2[0]
##数组
data modify storage t_algorithm_lib:array get_element_index.list set from storage t_algorithm_lib:array dedup.return
scoreboard players set #tal.array.get_element_index.times tal.input 1
function t_algorithm_lib:array/get_element_index/start
execute store result score #tal.array.dedup.list_count tal.input run data get storage t_algorithm_lib:array get_element_index.return
##如果不重复，则添加
execute if score #tal.array.dedup.list_count tal.input matches 0 run data modify storage t_algorithm_lib:array dedup.return append from storage t_algorithm_lib:array dedup.list2[0]


data remove storage t_algorithm_lib:array dedup.list2[0]
execute store result score #tal.array.dedup.list_count tal.input run data get storage t_algorithm_lib:array dedup.list2
execute if score #tal.array.dedup.list_count tal.input matches 1.. run function t_algorithm_lib:array/sort/dedup/loop