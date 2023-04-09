
#tellraw @a ["结果: ",{"nbt":"quick_sort.result[].value","storage":"t_algorithm_lib:array","color":"#BA86A1"},"\nid: ",{"nbt":"quick_sort.result[].id","storage":"t_algorithm_lib:array"}]


data modify storage t_algorithm_lib:array quick_sort.result set value []

data modify storage t_algorithm_lib:array quick_sort.result append from storage t_algorithm_lib:array quick_sort.mian.main_tree[-1][0][][]


data remove storage t_algorithm_lib:array quick_sort.mian.main_tree[-1]