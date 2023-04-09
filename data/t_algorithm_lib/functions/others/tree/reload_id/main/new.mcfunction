data modify storage t_algorithm_lib:others tree.reload_id.main_tree append value [[],[-1]]

data modify storage t_algorithm_lib:others tree.reload_id.main_tree[-1][0] set from storage t_algorithm_lib:array get_element_by_index.return.node
