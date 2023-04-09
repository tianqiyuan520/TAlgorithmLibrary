###树-前序遍历法更新id
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



##[自定义输入] 树-数据结构
# data modify storage t_algorithm_lib:others tree.input set value {value:'好',node:[{id:55,value:2.5d,node:[]}]}
##[自定义输入] 递归次数
# scoreboard players set #tal.tree.reload_id.time tal.input 1000



scoreboard players operation #tal.tree.reload_id.loop tal.input = #tal.tree.reload_id.time tal.input
##id
scoreboard players set #tal.tree.reload_id.id tal.input 0
scoreboard players set #tal.tree.reload_id.end tal.input 0
##主树 [ 数据,[指针]]
data modify storage t_algorithm_lib:others tree.reload_id.main_tree set value [[[],[-1]]]
data modify storage t_algorithm_lib:others tree.reload_id.main_tree[0][0][] set from storage t_algorithm_lib:others tree.input
execute if score #tal.tree.reload_id.loop tal.input matches 1.. if data storage t_algorithm_lib:others tree.reload_id.main_tree[] run function t_algorithm_lib:others/tree/reload_id/main/main

##[返回结果] 新的树
# data get storage t_algorithm_lib:others tree.reload_id.result

##节点的操作
scoreboard players set #tal.tree.reload_id.operation tal.input 0