##划分

##输入
# data modify storage t_algorithm_lib:array quick_sort.part.input set value []


##获取P,P=left
execute store result score #tal.array.quick_sort.p tal.input run data get storage t_algorithm_lib:array quick_sort.part.input[0].value
data modify storage t_algorithm_lib:array quick_sort.part.p set value 0d
data modify storage t_algorithm_lib:array quick_sort.part.p set from storage t_algorithm_lib:array quick_sort.part.input[0]
data remove storage t_algorithm_lib:array quick_sort.part.input[0]
data modify storage t_algorithm_lib:array quick_sort.part.input prepend from storage t_algorithm_lib:array quick_sort.part.input[-1]
data remove storage t_algorithm_lib:array quick_sort.part.input[-1]
##list1 为<= list[p] 的值数组
data modify storage t_algorithm_lib:array quick_sort.part.list set value []
##list2 为> list[p] 的值数组
data modify storage t_algorithm_lib:array quick_sort.part.list2 set value []
##遍历判断
execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.part.input
execute if score #tal.array.quick_sort.count tal.input matches 1.. run function t_algorithm_lib:array/sort/quick_sort/main/partition/loop

data modify storage t_algorithm_lib:array quick_sort.part.list2 prepend from storage t_algorithm_lib:array quick_sort.part.p