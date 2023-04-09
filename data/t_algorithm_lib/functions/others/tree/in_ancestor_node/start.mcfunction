###树-判断该id_1的祖先节点是否为id_2节点
##树定义：
# {
#     id:0,
#     value:0,
#     node:[]
# }

##例子：树含树
# {
#     id:0,
#     value:0,
#     node:[
#         {
#         id:1,
#             value:11,
#             node:[
#                     {
#                         id:2,
#                         value:12d,
#                         node:[]
#                     }
#             ]
#         },
#         {
#         id:3,
#             value:3.2d,
#             node:[]
#         }
#     ]
# }
##使用data get storage A[][] 进行投机取巧


##[自定义输入] 树-数据结构
# data modify storage t_algorithm_lib:others tree.input set value {id:3,value:'好',node:[{id:55,value:2.5d,node:[]}]}
##[自定义输入] 子节点的id
# data modify storage t_algorithm_lib:others tree.in_ancestor_node.id1 set value 0
##[自定义输入] 祖先节点的id
# data modify storage t_algorithm_lib:others tree.in_ancestor_node.id2 set value 0
data modify storage t_algorithm_lib:others tree.get_node.id set from storage t_algorithm_lib:others tree.in_ancestor_node.id2
function t_algorithm_lib:others/tree/get_node/start
data modify storage t_algorithm_lib:others tree.in_ancestor_node.result set value []
data modify storage t_algorithm_lib:others tree.in_ancestor_node.result set from storage t_algorithm_lib:others tree.get_node.result
data modify storage t_algorithm_lib:others tree.input_ set from storage t_algorithm_lib:others tree.input
data modify storage t_algorithm_lib:others tree.input set from storage t_algorithm_lib:others tree.in_ancestor_node.result
data modify storage t_algorithm_lib:others tree.get_node.id set from storage t_algorithm_lib:others tree.in_ancestor_node.id1
function t_algorithm_lib:others/tree/get_node/start
data modify storage t_algorithm_lib:others tree.input set from storage t_algorithm_lib:others tree.input_
##[返回结果] 是或不是(bool 类型)
data modify storage t_algorithm_lib:others tree.in_ancestor_node.result set value []
execute store success score #tal.tree.in_ancestor_node.is tal.input run data modify storage t_algorithm_lib:others tree.in_ancestor_node.result set from storage t_algorithm_lib:others tree.get_node.result

execute if score #tal.tree.in_ancestor_node.is tal.input matches 0 run data modify storage t_algorithm_lib:others tree.in_ancestor_node.result set value 0b
execute if score #tal.tree.in_ancestor_node.is tal.input matches 1 run data modify storage t_algorithm_lib:others tree.in_ancestor_node.result set value 1b