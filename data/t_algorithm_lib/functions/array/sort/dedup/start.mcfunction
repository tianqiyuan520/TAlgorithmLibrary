###数组元素去重
##双层遍历

##源数据 参数
##数据
##[自定义输入]列表
# data modify storage t_algorithm_lib:array dedup.list set value [3,2,1,3,4,5,8,1,2,9,1]
##遍历时判断的
data modify storage t_algorithm_lib:array dedup.list2 set from storage t_algorithm_lib:array dedup.list
# data modify storage t_algorithm_lib:array dedup.list3 set from storage t_algorithm_lib:array dedup.list
##结果
data modify storage t_algorithm_lib:array dedup.return set value []

execute store result score #tal.array.dedup.list_count tal.input run data get storage t_algorithm_lib:array dedup.list
execute if score #tal.array.dedup.list_count tal.input matches 1.. run function t_algorithm_lib:array/sort/dedup/loop