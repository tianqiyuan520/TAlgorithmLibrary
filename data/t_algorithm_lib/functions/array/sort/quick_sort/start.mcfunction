###快速排序
##归并，递归


##[自定义输入] 数组1 要排序的数组
# data modify storage t_algorithm_lib:array quick_sort.input.list1 set value []
##[自定义输入] 数组2 要排序的数组中比较的部分
# data modify storage t_algorithm_lib:array quick_sort.input.list2 set value [30.1, -24.3, 5d, 58d, 18d, 36d, 12d, 42d, 3.9d]
# data modify storage t_algorithm_lib:array quick_sort.input.list2 set value [10, 7, 8, 9, 1, 5]

## 返回结果：排序后的输入的列表

##例如：
##根据年龄排序
## data modify storage t_algorithm_lib:array quick_sort.input.list1 set value [{name:"张三",age:32},{name:"李四",age:23},{name:"王五",age:42}]
## data modify storage t_algorithm_lib:array quick_sort.input.list2 set value []
## data modify storage t_algorithm_lib:array quick_sort.input.list2 append from storage t_algorithm_lib:array quick_sort.input.list1[].age

##例如：
##只排序数组（相同类型）
## data modify storage t_algorithm_lib:array quick_sort.input.list2 set value [10, 7, 8, 9, 1, 5]


##[自定义输入] 循环次数
# scoreboard players set #tal.array.quick_sort.time tal.input 1000

##主树 [ 数据,[指针],[左指针],[右指针] ] 数据（经过partition分区）：[左，右]
data modify storage t_algorithm_lib:array quick_sort.mian.main_tree set value [[[[],[]],[-1],[0],[0]]]
##遍历添加id
data modify storage t_algorithm_lib:array quick_sort.input_ set from storage t_algorithm_lib:array quick_sort.input.list2

execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.input_
data modify storage t_algorithm_lib:array quick_sort.list set value []
scoreboard players set #tal.array.quick_sort.id tal.input -1
execute if score #tal.array.quick_sort.count tal.input matches 1.. run function t_algorithm_lib:array/sort/quick_sort/loop_add_id
##初步划分
data modify storage t_algorithm_lib:array quick_sort.part.input set from storage t_algorithm_lib:array quick_sort.list

function t_algorithm_lib:array/sort/quick_sort/main/partition/start

scoreboard players operation #tal.array.quick_sort.loop tal.input = #tal.array.quick_sort.time tal.input
data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][0] set from storage t_algorithm_lib:array quick_sort.part.list
data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][1] set from storage t_algorithm_lib:array quick_sort.part.list2
##index
execute store result score #tal.array.quick_sort.index tal.input run data get storage t_algorithm_lib:array quick_sort.list
execute store result storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][3][0] int 1 run scoreboard players remove #tal.array.quick_sort.index tal.input 1
function t_algorithm_lib:array/sort/quick_sort/main/main

execute if data storage t_algorithm_lib:array quick_sort.input.list1[0] run function t_algorithm_lib:array/sort/quick_sort/if_list1


##[返回结果]
# data get storage t_algorithm_lib:array quick_sort.result
#tellraw @a ["结果: ",{"nbt":"quick_sort.result[]","storage":"t_algorithm_lib:array","color":"#BA86A1"}]