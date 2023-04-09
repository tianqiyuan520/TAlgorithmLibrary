###树-判断该id的节点是否在树中
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
##[自定义输入] id
# data modify storage t_algorithm_lib:others tree.in_tree.id set value 0
data modify storage t_algorithm_lib:others tree.get_node.id set from storage t_algorithm_lib:others tree.in_tree.id
function t_algorithm_lib:others/tree/get_node/start
data modify storage t_algorithm_lib:others tree.in_tree.result set value []
##[返回结果] 是或不是(bool 类型)
execute store success score #tal.tree.in_tree.is tal.input run data modify storage t_algorithm_lib:others tree.in_tree.result set from storage t_algorithm_lib:others tree.get_node.result

execute if score #tal.tree.in_tree.is tal.input matches 0 run data modify storage t_algorithm_lib:others tree.in_tree.result set value 0b
execute if score #tal.tree.in_tree.is tal.input matches 1 run data modify storage t_algorithm_lib:others tree.in_tree.result set value 1b