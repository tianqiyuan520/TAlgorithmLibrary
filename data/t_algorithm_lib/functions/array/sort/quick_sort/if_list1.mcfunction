data modify storage t_algorithm_lib:array quick_sort.list set from storage t_algorithm_lib:array quick_sort.result
data modify storage t_algorithm_lib:array quick_sort.list2 set value []
data modify storage t_algorithm_lib:array list_scroll.input set from storage t_algorithm_lib:array quick_sort.input.list1
scoreboard players set #tal.array.list_scroll.last_phi tal.input 0
execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.list
execute if score #tal.array.quick_sort.count tal.input matches 1.. run function t_algorithm_lib:array/sort/quick_sort/sort_by_id

##[返回结果]
data modify storage t_algorithm_lib:array quick_sort.result set from storage t_algorithm_lib:array quick_sort.list2

data remove storage t_algorithm_lib:array quick_sort.input.list1