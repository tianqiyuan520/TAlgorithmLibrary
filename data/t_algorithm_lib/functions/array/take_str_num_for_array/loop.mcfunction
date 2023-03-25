#判断数字
data modify storage t_algorithm_lib:array take_num.list_check.num set from storage t_algorithm_lib:array take_num.list[0]


execute if data storage t_algorithm_lib:array take_num.list_check{num:"0"} run data modify storage t_algorithm_lib:array take_num.list2 append value 0
execute if data storage t_algorithm_lib:array take_num.list_check{num:"1"} run data modify storage t_algorithm_lib:array take_num.list2 append value 1
execute if data storage t_algorithm_lib:array take_num.list_check{num:"2"} run data modify storage t_algorithm_lib:array take_num.list2 append value 2
execute if data storage t_algorithm_lib:array take_num.list_check{num:"3"} run data modify storage t_algorithm_lib:array take_num.list2 append value 3
execute if data storage t_algorithm_lib:array take_num.list_check{num:"4"} run data modify storage t_algorithm_lib:array take_num.list2 append value 4

execute if data storage t_algorithm_lib:array take_num.list_check{num:"5"} run data modify storage t_algorithm_lib:array take_num.list2 append value 5
execute if data storage t_algorithm_lib:array take_num.list_check{num:"6"} run data modify storage t_algorithm_lib:array take_num.list2 append value 6
execute if data storage t_algorithm_lib:array take_num.list_check{num:"7"} run data modify storage t_algorithm_lib:array take_num.list2 append value 7
execute if data storage t_algorithm_lib:array take_num.list_check{num:"8"} run data modify storage t_algorithm_lib:array take_num.list2 append value 8
execute if data storage t_algorithm_lib:array take_num.list_check{num:"9"} run data modify storage t_algorithm_lib:array take_num.list2 append value 9


data remove storage t_algorithm_lib:array take_num.list[0]


execute store result score #tal.str.temp.list_count tal.str_parser run data get storage t_algorithm_lib:array take_num.list
execute if score #tal.str.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/take_str_num_for_array/loop