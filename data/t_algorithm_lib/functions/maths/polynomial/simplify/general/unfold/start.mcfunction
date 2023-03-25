##该式子通用化展开
##[[["a"],["^"],[ [1],['+'],[0]]] , ["*"],[["x"],["^"],[ ["a"],["+"],["c"]  ]]]
#变为 [a],[^],[(],[1],[+],[0],[)],[*],[x],[^],[(],[a],[+],[c],[)]
##如果是单个项 如 ["a"],["^"],[ [1],['+'],[0]]  ，请在外围再套层[]
##多项处理
##输入值
# data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set value []
# data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set value [[[["a"]],["^"],[ [1],['+'],[0]]] , ["*"],[[[["x"]],["^"],[ ["a"],["+"],["c"]  ]],['+'],[[['x']],['^'],[["b"]]]]]
#
execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list
execute store result score #tal.maths.polynomial.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
execute store result score #tal.maths.polynomial.list_count3 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0][0][0]
execute if score #tal.maths.polynomial.temp.no_mul tal.str_parser matches 0 if score #tal.maths.polynomial.list_count tal.str_parser matches 1 unless score #tal.maths.polynomial.list_count2 tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
execute if score #tal.maths.polynomial.temp.no_mul tal.str_parser matches 1 if score #tal.maths.polynomial.list_count tal.str_parser matches 1 if score #tal.maths.polynomial.list_count2 tal.str_parser matches 1 if score #tal.maths.polynomial.list_count2 tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
##返回值
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return set value []
function t_algorithm_lib:maths/polynomial/simplify/general/unfold/loop




##输入值
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set value []