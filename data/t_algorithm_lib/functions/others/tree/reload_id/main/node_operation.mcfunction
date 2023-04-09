##节点处理

##修改值
execute if score #tal.tree.reload_id.operation tal.input matches 1 run data modify storage t_algorithm_lib:others tree.reload_id.list2[-1].value set from storage t_algorithm_lib:others tree.modify_node.new_value
##添加节点
execute if score #tal.tree.reload_id.operation tal.input matches 2 unless data storage t_algorithm_lib:others tree.reload_id.list2[-1].node run data modify storage t_algorithm_lib:others tree.reload_id.list2[-1].node set value []
execute if score #tal.tree.reload_id.operation tal.input matches 2 run data modify storage t_algorithm_lib:others tree.reload_id.list2[-1].node append from storage t_algorithm_lib:others tree.add_node.new_node
##移除该节点
execute if score #tal.tree.reload_id.operation tal.input matches 3 run data remove storage t_algorithm_lib:others tree.reload_id.list2[-1]

