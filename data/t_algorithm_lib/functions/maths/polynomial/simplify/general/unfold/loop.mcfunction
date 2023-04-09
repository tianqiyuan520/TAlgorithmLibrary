#判断 确认添加方式

#符号
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]

execute if score #tal.maths.polynomial.list_count tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]

#符号
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [3]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0][0]
execute if score #tal.maths.polynomial.list_count tal.input matches 1 if score #tal.str.elements_type_check tal.input matches 1 run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]
execute if score #tal.str.elements_type_check tal.input matches 1 if score #tal.maths.polynomial.list_count tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
##
execute store result score #tal.maths.polynomial.list_count2 tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0][0]
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [3]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0][0][0]
execute if score #tal.maths.polynomial.list_count tal.input matches 1 if score #tal.maths.polynomial.list_count2 tal.input matches 1 if score #tal.str.elements_type_check tal.input matches 1 run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]
execute if score #tal.str.elements_type_check tal.input matches 1 if score #tal.maths.polynomial.list_count2 tal.input matches 1 if score #tal.maths.polynomial.list_count tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0][0]
#非符号
execute if score #tal.maths.polynomial.list_count tal.input matches 2.. run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.item.list set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
execute if score #tal.maths.polynomial.list_count tal.input matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/start


data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/loop