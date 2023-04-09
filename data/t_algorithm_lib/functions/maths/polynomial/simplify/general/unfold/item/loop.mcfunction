
#判断 确认添加方式
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list__[0]
#符号
# tellraw @a [{"text":"多次 展开ing 详细 "},{"nbt":"polynomial.generalize.unfold.list__[0]","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.generalize.unfold.return","storage":"t_algorithm_lib:maths","color":"#4EC990"}]
#符号
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [""]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list__[0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 run scoreboard players set #tal.maths.polynomial.list_count tal.input 1
execute if score #tal.str.elements_type_check tal.input matches 0 run scoreboard players set #tal.maths.polynomial.list_count tal.input 2
#
execute if score #tal.maths.polynomial.list_count tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list__[0]
#非符号
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list_ set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list__[0]
execute if score #tal.maths.polynomial.list_count tal.input matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/check_function
execute if score #tal.maths.polynomial.list_count tal.input matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/simple 
data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.list__[0]


execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list__
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/loop
