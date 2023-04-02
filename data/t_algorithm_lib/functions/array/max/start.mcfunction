###返回数组元素最大值

##源数据 参数
# data modify storage t_algorithm_lib:array max.list set value [2,-103,2,103,-11,3,7,9]

##结果
data modify storage t_algorithm_lib:array max.return set value []

##int转double
data modify storage t_algorithm_lib:array int_array_to_double_array.list set from storage t_algorithm_lib:array max.list
function t_algorithm_lib:array/int_array_to_double_array/start
data modify storage t_algorithm_lib:array max.list set from storage t_algorithm_lib:array int_array_to_double_array.return

##排序
scoreboard players set #tal.array.hight_sort.array tal.input 1
data modify storage t_algorithm_lib:array hight_sort.list set from storage t_algorithm_lib:array max.list
function t_algorithm_lib:array/sort/hight_sort/start
##结束
data modify storage t_algorithm_lib:array max.return set from storage t_algorithm_lib:array hight_sort.return[-1]