###根据指针获取 对应位置的 数组元素
## 0 - 999

##源数据 参数
##数据
# data modify storage t_algorithm_lib:array get_element_by_index.list set value [1,3,2,5,6]
##结果
data modify storage t_algorithm_lib:array get_element_by_index.list2 set value []

##指针
# scoreboard players set #tal.array.get_element_by_index.index tal.input 0

execute store result score #tal.array.get_element_by_index.num2 tal.input run data get storage t_algorithm_lib:array get_element_by_index.list
## 大于时
execute if score #tal.array.get_element_by_index.num2 tal.input > #tal.array.get_element_by_index.index tal.input run function t_algorithm_lib:array/get_element_by_index/loop

data modify storage t_algorithm_lib:array get_element_by_index.return set from storage t_algorithm_lib:array get_element_by_index.list2