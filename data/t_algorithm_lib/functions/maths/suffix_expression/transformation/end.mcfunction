execute store result score #tal.maths.suffix_expression.list_count tal.input run data get storage t_algorithm_lib:maths suffix_expression.transformation.s2
execute if score #tal.maths.suffix_expression.list_count tal.input matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation/end_loop