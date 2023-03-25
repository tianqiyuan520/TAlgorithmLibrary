data modify storage t_algorithm_lib:array dfs.main_tree[-1][2] append value 1
scoreboard players add #tal.array.dfs.deep tal.str_parser 1
data modify storage t_algorithm_lib:array dfs.main_tree append value [[],[0],[]]
data modify storage t_algorithm_lib:array dfs.main_tree[-1][0] set from storage t_algorithm_lib:array dfs.elements
scoreboard players set #tal.array.dfs.is_add tal.str_parser 1