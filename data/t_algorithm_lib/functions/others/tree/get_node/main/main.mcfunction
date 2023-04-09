data modify storage t_algorithm_lib:others tree.get_node.list set value []
data modify storage t_algorithm_lib:others tree.get_node.result set value []

function t_algorithm_lib:others/tree/get_node/main/check

scoreboard players set #tal.tree.get_node.end tal.input 0
##遍历
execute if data storage t_algorithm_lib:others tree.get_node.list[0] if score #tal.tree.get_node.end tal.input matches 0 run function t_algorithm_lib:others/tree/get_node/main/loop