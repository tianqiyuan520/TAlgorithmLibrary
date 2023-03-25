data modify storage t_algorithm_lib:maths polynomial.main.main_tree_ set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
data modify storage t_algorithm_lib:maths polynomial.main.result set value []

function t_algorithm_lib:maths/polynomial/simplify/main/tree/unfold/loop

data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.result