data modify storage t_algorithm_lib:array dfs.deeps append value 0
execute store result storage t_algorithm_lib:array dfs.deeps[-1] int 1 run scoreboard players get #tal.array.dfs.deep tal.str_parser
data modify storage t_algorithm_lib:array dfs.result append value []
data modify storage t_algorithm_lib:array dfs.result[-1] append from storage t_algorithm_lib:array dfs.elements
