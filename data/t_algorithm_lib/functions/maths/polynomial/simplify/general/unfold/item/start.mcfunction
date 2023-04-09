##单项处理
##[[["a"],["^"],[ [1],['+'],[0]]]
##[a],[^],[(],[1],[+],[0],[)] 
##输入值
# data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.item.list set value []
##返回值
# data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.item.return set value []
# function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/loop

# data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.item.list set value []

##判断
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0][1][0]
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list_ set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
execute unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"^"} run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/loop_start
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"^"} run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/simple



