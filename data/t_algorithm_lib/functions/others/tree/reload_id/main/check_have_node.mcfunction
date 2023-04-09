##根据指针获取值



data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:others tree.reload_id.main_tree[-1][0]
execute store result score #tal.array.get_element_by_index.index tal.input run data get storage t_algorithm_lib:others tree.reload_id.main_tree[-1][1][0]
function t_algorithm_lib:array/get_element_by_index/start

execute store result score #tal.tree.reload_id.count tal.input run data get storage t_algorithm_lib:array get_element_by_index.return.node
execute if score #tal.tree.reload_id.count tal.input matches 1.. run function t_algorithm_lib:others/tree/reload_id/main/new