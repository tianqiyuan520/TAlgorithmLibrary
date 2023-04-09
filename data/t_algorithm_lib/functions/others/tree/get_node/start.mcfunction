###树-根据id获取该节点
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
# data modify storage t_algorithm_lib:others tree.get_node.id set value 0

##[返回结果] 对应id的值
# data get storage t_algorithm_lib:others tree.get_node.result
execute store result score #tal.tree.get_node.id tal.input run data get storage t_algorithm_lib:others tree.get_node.id
data modify storage t_algorithm_lib:others tree.get_node.result set value []
data modify storage t_algorithm_lib:others tree.get_node.input set value {id:-1,value:0,node:[{}]}
data modify storage t_algorithm_lib:others tree.get_node.input.node[0] set from storage t_algorithm_lib:others tree.input

function t_algorithm_lib:others/tree/get_node/main/main