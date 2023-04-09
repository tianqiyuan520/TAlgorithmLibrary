
data modify storage t_algorithm_lib:others tree.reload_id.list2 append from storage t_algorithm_lib:others tree.reload_id.list[0]
execute if score #tal.tree.reload_id.index_ tal.input matches 0 if score #tal.tree.reload_id.operation tal.input matches 1.. if score #tal.tree.reload_id.id tal.input = #tal.tree.operation.id tal.input run function t_algorithm_lib:others/tree/reload_id/main/node_operation 
execute if score #tal.tree.reload_id.index_ tal.input matches 0 store result storage t_algorithm_lib:others tree.reload_id.list2[-1].id int 1 run scoreboard players get #tal.tree.reload_id.id tal.input

data remove storage t_algorithm_lib:others tree.reload_id.list[0]
scoreboard players remove #tal.tree.reload_id.index_ tal.input 1
execute if score #tal.tree.reload_id.index_ tal.input matches 0.. if data storage t_algorithm_lib:others tree.reload_id.list[] run function t_algorithm_lib:others/tree/reload_id/main/id_change_loop