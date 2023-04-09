###将数组离散化
## [3,10,9,4,3] -> [1,4,3,2,1]

##源数据 参数
##数据
##主数据
# data modify storage t_algorithm_lib:array discrete.list set value [3,2,1,3,4,5,8,1,2,9,1]

##int转double
data modify storage t_algorithm_lib:array int_array_to_double_array.list set from storage t_algorithm_lib:array discrete.list
function t_algorithm_lib:array/int_array_to_double_array/start

data modify storage t_algorithm_lib:array discrete.list set from storage t_algorithm_lib:array int_array_to_double_array.return
data modify storage t_algorithm_lib:array discrete.list2 set from storage t_algorithm_lib:array int_array_to_double_array.return

##结果
data modify storage t_algorithm_lib:array discrete.return set value []



##去重
data modify storage t_algorithm_lib:array dedup.list set from storage t_algorithm_lib:array discrete.list
function t_algorithm_lib:array/sort/dedup/start
##排序
data modify storage t_algorithm_lib:array hight_sort.list set from storage t_algorithm_lib:array dedup.return
function t_algorithm_lib:array/sort/hight_sort/start
##遍历 对应
execute store result score #tal.array.discrete.list_count tal.input run data get storage t_algorithm_lib:array discrete.list2
data modify storage t_algorithm_lib:array discrete.list3 set from storage t_algorithm_lib:array hight_sort.return

execute if score #tal.array.discrete.list_count tal.input matches 1.. run function t_algorithm_lib:array/sort/discrete/loop