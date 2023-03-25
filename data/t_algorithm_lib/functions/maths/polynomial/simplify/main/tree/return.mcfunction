##判断是结束 或 回溯
execute store result score #tal.maths.polynomial.main.tree_len tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.main_tree

execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/main/tree/remove_branch

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.main.main_tree[0][4][0]
execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 1 if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"mul"} run function t_algorithm_lib:maths/polynomial/simplify/main/tree/remove_branch


execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 1 if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"add"} run function t_algorithm_lib:maths/polynomial/simplify/main/add2/start


execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/end
data modify storage t_algorithm_lib:maths polynomial.main.main_tree_ set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
data modify storage t_algorithm_lib:maths polynomial.main.main_tree_[] set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
