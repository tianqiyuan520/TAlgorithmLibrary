scoreboard players remove #tal.array.dfs.time tal.input 1
execute store result score #tal.array.dfs.list_count tal.input run data get storage t_algorithm_lib:array dfs.main_tree
execute if score #tal.array.dfs.time tal.input matches 1.. if score #tal.array.dfs.list_count tal.input matches 1.. run function t_algorithm_lib:array/dfs/loop
execute store result score #tal.array.dfs.list_count tal.input run data get storage t_algorithm_lib:array dfs.main_tree
execute if score #tal.array.dfs.time tal.input matches 1.. if score #tal.array.dfs.list_count tal.input matches 1.. run function t_algorithm_lib:array/dfs/main