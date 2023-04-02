execute if score #tal.array.get_element_by_index.index tal.input matches 0 run data modify storage t_algorithm_lib:array get_element_by_index.list2 set from storage t_algorithm_lib:array get_element_by_index.list[0]
execute if score #tal.array.get_element_by_index.index tal.input matches 1..512 run function t_algorithm_lib:array/get_element_by_index/loop/tree1_0
execute if score #tal.array.get_element_by_index.index tal.input matches 513..1024 run function t_algorithm_lib:array/get_element_by_index/loop/tree1_1
