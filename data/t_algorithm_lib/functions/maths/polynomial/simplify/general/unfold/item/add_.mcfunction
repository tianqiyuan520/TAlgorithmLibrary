scoreboard players set #tal.maths.polynomial.temp.fail tal.input 0

execute store result score #tal.maths.polynomial.num tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]

data modify storage t_algorithm_lib:maths polynomial.temp.data set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]
function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/check_parn
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0] set from storage t_algorithm_lib:maths polynomial.temp.data

execute store result score #tal.maths.polynomial.num tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]

#判断列表
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0][]
execute if score #tal.str.elements_type_check tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]
