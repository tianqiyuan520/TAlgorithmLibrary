###int数组转double数组
##[1,2] ->[1.0d,2.0d]
##源数据 参数
##数据
##主数据
execute unless data storage t_algorithm_lib:array int_array_to_double_array.list run data modify storage t_algorithm_lib:array int_array_to_double_array.list set value [3,1,2]

##结果
data modify storage t_algorithm_lib:array int_array_to_double_array.return set value []


execute store result score #tal.array.int_array_to_double_array.num tal.str_parser run data get storage t_algorithm_lib:array int_array_to_double_array.list
execute if score #tal.array.int_array_to_double_array.num tal.str_parser matches 1.. run function t_algorithm_lib:array/int_array_to_double_array/loop