#判断数字
data modify storage t_algorithm_lib:array temp.list_check.num set from storage t_algorithm_lib:array temp.list_[0]
data modify storage t_algorithm_lib:array temp.n set from storage t_algorithm_lib:array temp.list_[0]

execute if data storage t_algorithm_lib:array temp.list_check{num:"0"} run data modify storage t_algorithm_lib:array temp.n set value 0
execute if data storage t_algorithm_lib:array temp.list_check{num:"1"} run data modify storage t_algorithm_lib:array temp.n set value 1
execute if data storage t_algorithm_lib:array temp.list_check{num:"2"} run data modify storage t_algorithm_lib:array temp.n set value 2
execute if data storage t_algorithm_lib:array temp.list_check{num:"3"} run data modify storage t_algorithm_lib:array temp.n set value 3
execute if data storage t_algorithm_lib:array temp.list_check{num:"4"} run data modify storage t_algorithm_lib:array temp.n set value 4

execute if data storage t_algorithm_lib:array temp.list_check{num:"5"} run data modify storage t_algorithm_lib:array temp.n set value 5
execute if data storage t_algorithm_lib:array temp.list_check{num:"6"} run data modify storage t_algorithm_lib:array temp.n set value 6
execute if data storage t_algorithm_lib:array temp.list_check{num:"7"} run data modify storage t_algorithm_lib:array temp.n set value 7
execute if data storage t_algorithm_lib:array temp.list_check{num:"8"} run data modify storage t_algorithm_lib:array temp.n set value 8
execute if data storage t_algorithm_lib:array temp.list_check{num:"9"} run data modify storage t_algorithm_lib:array temp.n set value 9


function t_algorithm_lib:array/array_to_array_have_array/check_tier



data remove storage t_algorithm_lib:array temp.list_[0]

execute store result score #tal.str.temp.list_count tal.str_parser run data get storage t_algorithm_lib:array temp.list_

execute if score #tal.str.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/array_to_array_have_array/loop