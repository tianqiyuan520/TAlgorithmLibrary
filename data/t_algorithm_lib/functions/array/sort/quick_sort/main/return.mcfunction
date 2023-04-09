execute store result score #tal.array.quick_sort.index_ tal.input run data get storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][1][0]

execute if score #tal.array.quick_sort.index_ tal.input matches 0 run data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][0] set value []
execute if score #tal.array.quick_sort.index_ tal.input matches 0 run data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][0] append from storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][][]
execute if score #tal.array.quick_sort.index_ tal.input matches 1 run data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][1] set value []
execute if score #tal.array.quick_sort.index_ tal.input matches 1 run data modify storage t_algorithm_lib:array quick_sort.mian.main_tree[-2][0][1] append from storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][][]
data remove storage t_algorithm_lib:array quick_sort.mian.main_tree[-1]

