# execute if score #tal.maths.polynomial.temp.success2 tal.input matches 1 run tellraw @a [{"text":"展开ing "},{"nbt":"polynomial.generalize.unfold.list_","storage":"t_algorithm_lib:maths","color":"#4EC990"}]
# execute if score #tal.maths.polynomial.temp.success2 tal.input matches 1 run tellraw @a [{"text":"展开ing指数"},{"nbt":"polynomial.generalize.unfold.list_[2]","storage":"t_algorithm_lib:maths","color":"#4EC990"}]

data modify storage t_algorithm_lib:maths polynomial.temp.data set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]
function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/check_parn
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0] set from storage t_algorithm_lib:maths polynomial.temp.data

execute store result score #tal.maths.polynomial.num tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]

execute if score #tal.maths.polynomial.num tal.input matches 2.. run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append value ['(']
#判断列表
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0][]
execute if score #tal.str.elements_type_check tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]

execute if score #tal.maths.polynomial.num tal.input matches 2.. run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append value [')']
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[1]
##

data modify storage t_algorithm_lib:maths polynomial.temp.data set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2]
function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/check_parn
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2] set from storage t_algorithm_lib:maths polynomial.temp.data

execute store result score #tal.maths.polynomial.num tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2]
execute if score #tal.maths.polynomial.num tal.input matches 2.. run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append value ['(']
#判断列表
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2][0]
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2][]
execute if score #tal.str.elements_type_check tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2]
#
execute if score #tal.maths.polynomial.num tal.input matches 2.. run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append value [')']


