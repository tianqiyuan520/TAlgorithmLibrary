scoreboard players set #tal.array.get_element_index.num tal.str_parser 1
data modify storage t_algorithm_lib:array get_element_index.list_check set from storage t_algorithm_lib:array get_element_index.list[0]
execute store success score #tal.array.get_element_index.num tal.str_parser run data modify storage t_algorithm_lib:array get_element_index.list_check set from storage t_algorithm_lib:array get_element_index.element

##如果匹配
execute if score #tal.array.get_element_index.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:array get_element_index.list2 append value 0
execute if score #tal.array.get_element_index.num tal.str_parser matches 0 store result storage t_algorithm_lib:array get_element_index.list2[-1] int 1 run scoreboard players get #tal.array.get_element_index.index tal.str_parser


data remove storage t_algorithm_lib:array get_element_index.list[0]
scoreboard players add #tal.array.get_element_index.index tal.str_parser 1




execute store result score #tal.array.get_element_index.list_count tal.str_parser run data get storage t_algorithm_lib:array get_element_index.list
execute store result score #tal.array.get_element_index.list_count2 tal.str_parser run data get storage t_algorithm_lib:array get_element_index.list2
execute if score #tal.array.get_element_index.list_count tal.str_parser matches 1.. if score #tal.array.get_element_index.list_count2 tal.str_parser < #tal.array.get_element_index.times tal.str_parser run function t_algorithm_lib:array/get_element_index/loop