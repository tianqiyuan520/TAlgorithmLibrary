###获取该元素在该数组里 出现的位置(index处)
## 1 in [1,2,3,1] --> 出现的位置: [0,3]
##源数据 参数
##数据
execute unless data storage t_algorithm_lib:array get_element_index.element run data modify storage t_algorithm_lib:array get_element_index.element set value 1
##数组
execute unless data storage t_algorithm_lib:array get_element_index.list run data modify storage t_algorithm_lib:array get_element_index.list set value [3,2,1,3,4,5,8,1,2,9,1]

data modify storage t_algorithm_lib:array get_element_index.list_check set value []

##结果
data modify storage t_algorithm_lib:array get_element_index.list2 set value []
#
scoreboard players set #tal.array.get_element_index.index tal.str_parser 0
scoreboard players set #tal.array.get_element_index.num tal.str_parser 0

execute store result score #tal.array.get_element_index.list_count tal.str_parser run data get storage t_algorithm_lib:array get_element_index.list
execute if score #tal.array.get_element_index.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/get_element_index/loop

data modify storage t_algorithm_lib:array get_element_index.return set from storage t_algorithm_lib:array get_element_index.list2

##重复个数限制 ,超过时停止遍历
scoreboard players set #tal.array.get_element_index.times tal.str_parser 2147483647
