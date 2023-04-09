###DFS 处理嵌套数组
##返回 数组
##[[原数组的最深元素1],[原数组的最深元素2],[原数组的最深元素3],...] , [1,2,3,3,4,..(该元素对应的深度)]
##[自定义输入]数组
# data modify storage t_algorithm_lib:array dfs.list set value []
##主树
data modify storage t_algorithm_lib:array dfs.main_tree set value []
data modify storage t_algorithm_lib:array dfs.result set value []
data modify storage t_algorithm_lib:array dfs.deeps set value []
##指针
scoreboard players set #tal.array.dfs.index tal.input 0
scoreboard players set #tal.array.dfs.deep tal.input 0



data modify storage t_algorithm_lib:array dfs.main_tree append value [[],[0],[]]
data modify storage t_algorithm_lib:array dfs.main_tree[-1][0] set from storage t_algorithm_lib:array dfs.list
scoreboard players set #tal.array.dfs.time tal.input 10000


function t_algorithm_lib:array/dfs/main

