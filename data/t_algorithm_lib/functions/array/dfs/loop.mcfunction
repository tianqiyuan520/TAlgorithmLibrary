execute store result score #tal.array.dfs.index tal.str_parser run data get storage t_algorithm_lib:array dfs.main_tree[-1][1][0]
execute store result score #tal.array.dfs.index2 tal.str_parser run data get storage t_algorithm_lib:array dfs.main_tree[-1][0]
scoreboard players remove #tal.array.dfs.index2 tal.str_parser 1
##增加指针
execute if score #tal.array.dfs.index2 tal.str_parser > #tal.array.dfs.index tal.str_parser run function t_algorithm_lib:array/dfs/increase
##

scoreboard players set #tal.array.dfs.is_add tal.str_parser 0
##获取对应的数据
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:array dfs.main_tree[-1][0]
scoreboard players operation #tal.array.get_element_by_index.index tal.str_parser = #tal.array.dfs.index tal.str_parser
function t_algorithm_lib:array/get_element_by_index/start
data modify storage t_algorithm_lib:array dfs.elements set from storage t_algorithm_lib:array get_element_by_index.return
#
execute store result score #tal.array.dfs.is_record tal.str_parser run data get storage t_algorithm_lib:array dfs.main_tree[-1][2]
##判断是否可以继续记入
execute store result score #tal.array.dfs.index2 tal.str_parser run data get storage t_algorithm_lib:array dfs.main_tree[-1][0]
execute if score #tal.array.dfs.is_record tal.str_parser < #tal.array.dfs.index2 tal.str_parser run function t_algorithm_lib:array/dfs/record
execute store result score #tal.array.dfs.index2 tal.str_parser run data get storage t_algorithm_lib:array dfs.main_tree[-1][0]
scoreboard players remove #tal.array.dfs.index2 tal.str_parser 1
execute if score #tal.array.dfs.index tal.str_parser = #tal.array.dfs.index2 tal.str_parser if score #tal.array.dfs.is_add tal.str_parser matches 0 run function t_algorithm_lib:array/dfs/return