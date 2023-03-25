data modify storage t_algorithm_lib:array dfs.list set from storage t_algorithm_lib:maths auto_derivation.main_tree[0][0]
function t_algorithm_lib:array/dfs/start
data modify storage t_algorithm_lib:maths auto_derivation.transform.deeps set from storage t_algorithm_lib:array dfs.deeps
data modify storage t_algorithm_lib:maths auto_derivation.transform.data set from storage t_algorithm_lib:array dfs.result
function t_algorithm_lib:maths/auto_derivation/transform/start

##去除无意义括号
data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths auto_derivation.transform.result
function t_algorithm_lib:maths/auto_derivation/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths auto_derivation.result set from storage t_algorithm_lib:maths auto_derivation.temp.list

##去除无意义括号
data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths auto_derivation.result
function t_algorithm_lib:maths/auto_derivation/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths auto_derivation.result set from storage t_algorithm_lib:maths auto_derivation.temp.list

# data modify storage t_algorithm_lib:maths auto_derivation.result set from storage t_algorithm_lib:maths auto_derivation.transform.result
