


data modify storage t_algorithm_lib:maths suffix_expression.transformation.s1 append from storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1]

data remove storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1]
execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.transformation.s2
execute if score #tal.maths.suffix_expression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation/end_loop