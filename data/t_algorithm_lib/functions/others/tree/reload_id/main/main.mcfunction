
##回溯
execute store result score #tal.tree.reload_id.index tal.input run data get storage t_algorithm_lib:others tree.reload_id.main_tree[-1][1][0]
execute store result score #tal.tree.reload_id.count tal.input run data get storage t_algorithm_lib:others tree.reload_id.main_tree[-1][0]
execute store result score #tal.tree.reload_id.count2 tal.input run data get storage t_algorithm_lib:others tree.reload_id.main_tree
scoreboard players remove #tal.tree.reload_id.count tal.input 1
execute if score #tal.tree.reload_id.count2 tal.input matches 2.. if score #tal.tree.reload_id.index tal.input >= #tal.tree.reload_id.count tal.input run function t_algorithm_lib:others/tree/reload_id/main/return

##结束
execute if score #tal.tree.reload_id.count2 tal.input matches 1 if score #tal.tree.reload_id.index tal.input >= #tal.tree.reload_id.count tal.input run function t_algorithm_lib:others/tree/reload_id/main/end

##指针加1
execute store result score #tal.tree.reload_id.index tal.input run data get storage t_algorithm_lib:others tree.reload_id.main_tree[-1][1][0]
execute if score #tal.tree.reload_id.end tal.input matches 0 run function t_algorithm_lib:others/tree/reload_id/main/index_add

##修改id
execute if score #tal.tree.reload_id.end tal.input matches 0 run function t_algorithm_lib:others/tree/reload_id/main/id_change

##判断有子节点,若有则递归
execute if score #tal.tree.reload_id.end tal.input matches 0 run function t_algorithm_lib:others/tree/reload_id/main/check_have_node

##主树 [ 数据,[指针]]
scoreboard players add #tal.tree.reload_id.id tal.input 1
scoreboard players remove #tal.tree.reload_id.loop tal.input 1
execute if score #tal.tree.reload_id.loop tal.input matches 1.. if data storage t_algorithm_lib:others tree.reload_id.main_tree[] if score #tal.tree.reload_id.end tal.input matches 0 run function t_algorithm_lib:others/tree/reload_id/main/main