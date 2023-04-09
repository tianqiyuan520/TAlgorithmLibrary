data modify storage t_algorithm_lib:others tree.reload_id.list set from storage t_algorithm_lib:others tree.reload_id.main_tree[-1][0]
execute store result score #tal.tree.reload_id.index_ tal.input run data get storage t_algorithm_lib:others tree.reload_id.main_tree[-1][1][0]

data modify storage t_algorithm_lib:others tree.reload_id.list2 set value []


execute if score #tal.tree.reload_id.index_ tal.input matches 0.. if data storage t_algorithm_lib:others tree.reload_id.list[] run function t_algorithm_lib:others/tree/reload_id/main/id_change_loop

##
data modify storage t_algorithm_lib:others tree.reload_id.main_tree[-1][0] set from storage t_algorithm_lib:others tree.reload_id.list2
data modify storage t_algorithm_lib:others tree.reload_id.main_tree[-1][0] append from storage t_algorithm_lib:others tree.reload_id.list[]
