
data modify storage t_algorithm_lib:maths string_to_expression.result append value []
data modify storage t_algorithm_lib:maths string_to_expression.result[-1] append from storage t_algorithm_lib:maths string_to_expression.temp.n

scoreboard players set #tal.maths.STExpression.is_tier tal.input 0