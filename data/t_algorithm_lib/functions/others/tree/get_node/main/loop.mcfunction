##判断id

execute store result score #tal.tree.get_node.id_ tal.input run data get storage t_algorithm_lib:others tree.get_node.list[0].id
execute if score #tal.tree.get_node.id_ tal.input = #tal.tree.get_node.id tal.input run scoreboard players set #tal.tree.get_node.end tal.input 1
execute if score #tal.tree.get_node.end tal.input matches 1 run data modify storage t_algorithm_lib:others tree.get_node.result set from storage t_algorithm_lib:others tree.get_node.list[0]

##
data remove storage t_algorithm_lib:others tree.get_node.list[0]
execute if data storage t_algorithm_lib:others tree.get_node.list[0] if score #tal.tree.get_node.end tal.input matches 0 run function t_algorithm_lib:others/tree/get_node/main/loop
