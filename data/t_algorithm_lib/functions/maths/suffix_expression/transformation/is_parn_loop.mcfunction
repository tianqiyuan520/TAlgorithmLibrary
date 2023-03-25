##移除括号的循环


data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set value []
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1][0]
execute unless data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} unless data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run data modify storage t_algorithm_lib:maths suffix_expression.transformation.s1 append from storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1]

data remove storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1]
execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.transformation.s2
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set value []
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} run data remove storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1]
execute unless data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} if score #tal.maths.suffix_expression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation/is_parn_loop