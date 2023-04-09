##简化index [0,20]
execute if score #tal.array.get_element_by_index.index tal.input matches 0..20 run function t_algorithm_lib:array/get_element_by_index/simple
##
execute if score #tal.array.get_element_by_index.index tal.input matches 21.. run function t_algorithm_lib:array/get_element_by_index/loop/tree0_0
