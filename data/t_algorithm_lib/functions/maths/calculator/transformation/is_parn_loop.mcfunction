##移除括号的循环
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set value []
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s2[-1][0]
execute unless data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} unless data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run data modify storage t_algorithm_lib:maths calculator.transformation.s1 append from storage t_algorithm_lib:maths calculator.transformation.s2[-1]

# data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set value []
# data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s2[-1][0]
# execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run data remove storage t_algorithm_lib:maths calculator.transformation.s2[-1]
data remove storage t_algorithm_lib:maths calculator.transformation.s2[-1]

execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.transformation.s2
execute unless data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/transformation/is_parn_loop