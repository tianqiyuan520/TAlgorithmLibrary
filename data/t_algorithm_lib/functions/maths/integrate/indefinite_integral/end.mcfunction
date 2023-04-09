say 运算结束
data modify storage t_algorithm_lib:array dfs.list set from storage t_algorithm_lib:maths integrate.main_tree[0][0]
function t_algorithm_lib:array/dfs/start
data modify storage t_algorithm_lib:maths integrate.transform.deeps set from storage t_algorithm_lib:array dfs.deeps
data modify storage t_algorithm_lib:maths integrate.transform.data set from storage t_algorithm_lib:array dfs.result
function t_algorithm_lib:maths/integrate/indefinite_integral/transform/start
data modify storage t_algorithm_lib:maths integrate.result set from storage t_algorithm_lib:maths integrate.transform.result

##去除无意义括号
data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths integrate.result
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths integrate.result set from storage t_algorithm_lib:maths auto_derivation.temp.list
##去除无意义括号
data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths integrate.result
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths integrate.result set from storage t_algorithm_lib:maths auto_derivation.temp.list
##去除无意义括号
data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths integrate.result
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths integrate.result set from storage t_algorithm_lib:maths auto_derivation.temp.list