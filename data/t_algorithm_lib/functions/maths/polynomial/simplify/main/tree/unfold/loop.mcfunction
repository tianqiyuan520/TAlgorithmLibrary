##判断是否为符号
scoreboard players set #tal.maths.polynomial.main.is_symbol tal.input 1

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree_[0][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.main.is_symbol tal.input 1
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.main.is_symbol tal.input 1
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"("} run scoreboard players set #tal.maths.polynomial.main.is_symbol tal.input 1
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:")"} run scoreboard players set #tal.maths.polynomial.main.is_symbol tal.input 1
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.main.main_tree_[0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 run scoreboard players set #tal.maths.polynomial.main.is_symbol tal.input 0
##
execute if score #tal.maths.polynomial.main.is_symbol tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.main.result append from storage t_algorithm_lib:maths polynomial.main.main_tree_[0]
execute if score #tal.maths.polynomial.main.is_symbol tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.main.result append from storage t_algorithm_lib:maths polynomial.main.main_tree_[0][]
##
data remove storage t_algorithm_lib:maths polynomial.main.main_tree_[0]

execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.main.main_tree_
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/tree/unfold/loop