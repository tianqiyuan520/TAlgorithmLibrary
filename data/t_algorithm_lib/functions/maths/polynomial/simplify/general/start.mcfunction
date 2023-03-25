##该项 通用化 
##[[["a"],["^"],[ ["a"],["+"],["c"]  ]] , ["*"],[["x"],["^"],[ ["a"],["+"],["c"]  ]],...]
##传入[[a],[^],[(][a],[+],[c],[)],[*],[x]...]

##[自定义]输入值
# data modify storage t_algorithm_lib:maths polynomial.generalize.input set value []


##data modify storage t_algorithm_lib:maths polynomial.generalize.return set value []
function t_algorithm_lib:maths/polynomial/simplify/general/symbol/start


##去重化 化简
function t_algorithm_lib:maths/polynomial/simplify/general/dedup/start


data modify storage t_algorithm_lib:maths polynomial.generalize.input set value []