### 树-节点添加

##[自定义输入] 树-数据结构
# data modify storage t_algorithm_lib:others tree.input set value {id:3,value:'好',node:[{id:55,value:2.5d,node:[]}]}
##[自定义输入] 节点的id （注意：重前序遍历之后的id）
# data modify storage t_algorithm_lib:others tree.add_node.id set value 0
execute store result score #tal.tree.operation.id tal.input run data get storage t_algorithm_lib:others tree.add_node.id
##[自定义输入] 节点
# data modify storage t_algorithm_lib:others tree.add_node.new_node set value 0
scoreboard players set #tal.tree.reload_id.operation tal.input 2
scoreboard players set #tal.tree.reload_id.time tal.input 100000
function t_algorithm_lib:others/tree/reload_id/start

##[返回结果]
data get storage t_algorithm_lib:others tree.reload_id.result