
execute store result score #tal.array.list_scroll.inp tal.input run data get storage t_algorithm_lib:array quick_sort.list[0].id
function t_algorithm_lib:array/list_scroll/start
data modify storage t_algorithm_lib:array quick_sort.list2 append from storage t_algorithm_lib:array list_scroll.input[0]



data remove storage t_algorithm_lib:array quick_sort.list[0]
execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.list
execute if score #tal.array.quick_sort.count tal.input matches 1.. run function t_algorithm_lib:array/sort/quick_sort/sort_by_id