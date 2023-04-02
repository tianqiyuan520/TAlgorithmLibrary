execute store result score #tal.array.dfs.index2 tal.input run data get storage t_algorithm_lib:array dfs.main_tree[-1][1][0]
scoreboard players add #tal.array.dfs.index2 tal.input 1

execute store result storage t_algorithm_lib:array dfs.main_tree[-1][1][0] int 1 run scoreboard players get #tal.array.dfs.index2 tal.input
