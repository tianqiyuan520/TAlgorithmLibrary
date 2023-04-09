
data modify storage t_algorithm_lib:maths suffix_expression.separation append value []
data modify storage t_algorithm_lib:maths suffix_expression.separation[-1] append from storage t_algorithm_lib:maths suffix_expression.temp.n

scoreboard players set #tal.maths.suffix_expression.is_tier tal.input 0