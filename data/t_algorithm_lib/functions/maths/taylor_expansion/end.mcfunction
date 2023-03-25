data modify storage t_algorithm_lib:array dfs.list set from storage t_algorithm_lib:maths taylor_expansion.result
function t_algorithm_lib:array/dfs/start
data modify storage t_algorithm_lib:maths auto_derivation.transform.deeps set from storage t_algorithm_lib:array dfs.deeps
data modify storage t_algorithm_lib:maths auto_derivation.transform.data set from storage t_algorithm_lib:array dfs.result
function t_algorithm_lib:maths/auto_derivation/transform/start
data modify storage t_algorithm_lib:maths taylor_expansion.result set from storage t_algorithm_lib:maths auto_derivation.transform.result
