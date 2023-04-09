
data modify storage t_algorithm_lib:others tree.reload_id.list2 append from storage t_algorithm_lib:others tree.reload_id.list[0]

execute if score #tal.tree.reload_id.index_ tal.input matches 0 run data modify storage t_algorithm_lib:others tree.reload_id.list2[-1].node set from storage t_algorithm_lib:others tree.reload_id.main_tree[-1][0]

data remove storage t_algorithm_lib:others tree.reload_id.list[0]
scoreboard players remove #tal.tree.reload_id.index_ tal.input 1


execute if score #tal.tree.reload_id.index_ tal.input matches 0.. if data storage t_algorithm_lib:others tree.reload_id.list[] run function t_algorithm_lib:others/tree/reload_id/main/return_loop