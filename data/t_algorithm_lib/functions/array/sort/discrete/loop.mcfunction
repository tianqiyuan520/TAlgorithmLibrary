##数据
data modify storage t_algorithm_lib:array get_element_index.element set from storage t_algorithm_lib:array discrete.list2[0]
##数组
data modify storage t_algorithm_lib:array get_element_index.list set from storage t_algorithm_lib:array discrete.list3
scoreboard players set #tal.array.get_element_index.times tal.str_parser 1
function t_algorithm_lib:array/get_element_index/start
##找到对应时 index + 1
# scoreboard players add #tal.array.get_element_index.index tal.str_parser 1
data modify storage t_algorithm_lib:array discrete.return append value 0
execute store result storage t_algorithm_lib:array discrete.return[-1] int 1 run scoreboard players get #tal.array.get_element_index.index tal.str_parser


data remove storage t_algorithm_lib:array discrete.list2[0]

execute store result score #tal.array.discrete.list_count tal.str_parser run data get storage t_algorithm_lib:array discrete.list2
execute if score #tal.array.discrete.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/sort/discrete/loop