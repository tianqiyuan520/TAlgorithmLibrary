
data modify storage t_algorithm_lib:maths polynomial.main.main_tree append value [[],[-1],[0],[0],['add']]
data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][0]