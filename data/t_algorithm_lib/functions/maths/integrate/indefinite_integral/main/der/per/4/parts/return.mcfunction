# tellraw @a ["分部积分返回1： ",{"nbt":"integrate.main_tree[-1][0]","storage":"t_algorithm_lib:maths","color":"#B8881E"}]

data modify storage t_algorithm_lib:array dfs.list set from storage t_algorithm_lib:maths integrate.main_tree[-1][0]
function t_algorithm_lib:array/dfs/start
data modify storage t_algorithm_lib:maths integrate.transform.deeps set from storage t_algorithm_lib:array dfs.deeps
data modify storage t_algorithm_lib:maths integrate.transform.data set from storage t_algorithm_lib:array dfs.result
function t_algorithm_lib:maths/integrate/indefinite_integral/transform/start


data modify storage t_algorithm_lib:maths integrate.result set from storage t_algorithm_lib:maths integrate.transform.result

data modify storage t_algorithm_lib:maths suffix_expression.content set from storage t_algorithm_lib:maths integrate.transform.result

# tellraw @a ["分部积分返回2： ",{"nbt":"integrate.transform.result","storage":"t_algorithm_lib:maths","color":"#B8881E"}]


function t_algorithm_lib:maths/suffix_expression/start
data modify storage t_algorithm_lib:maths suffix_expression.transformation.input set from storage t_algorithm_lib:maths suffix_expression.temp.data2

# tellraw @a ["分部积分返回2.1： ",{"nbt":"suffix_expression.temp.data2","storage":"t_algorithm_lib:maths","color":"#B8881E"}]

function t_algorithm_lib:maths/suffix_expression/transformation/start

# tellraw @a ["分部积分返回2.2： ",{"nbt":"suffix_expression.transformation.s1","storage":"t_algorithm_lib:maths","color":"#B8881E"}]

data modify storage t_algorithm_lib:maths suffix_expression.transformation2.input set from storage t_algorithm_lib:maths suffix_expression.transformation.s1
function t_algorithm_lib:maths/suffix_expression/transformation2/start

# data modify storage t_algorithm_lib:maths polynomial.separation set from storage t_algorithm_lib:maths suffix_expression.transformation2.result
# tellraw @a ["分部积分返回3： ",{"nbt":"suffix_expression.transformation2.result","storage":"t_algorithm_lib:maths","color":"#B8881E"}]

# function t_algorithm_lib:maths/polynomial/simplify/read/start



data modify storage t_algorithm_lib:maths integrate.main_tree[-2][0][2] set from storage t_algorithm_lib:maths suffix_expression.transformation2.result
data modify storage t_algorithm_lib:maths integrate.main_tree[-2][2][2] set value 1
data modify storage t_algorithm_lib:maths integrate.main_tree[-2][1][0] set value 2


# tellraw @a ["分部积分返回 - 新的主树",{"nbt":"integrate.main_tree[-2]","storage":"t_algorithm_lib:maths","color":"#B8DCAA"}]
