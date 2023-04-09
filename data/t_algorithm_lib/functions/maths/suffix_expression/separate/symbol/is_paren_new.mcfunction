##为( 新开个
data modify storage t_algorithm_lib:maths suffix_expression.temp.data2[-1] append from storage t_algorithm_lib:maths suffix_expression.temp.data[0]
data modify storage t_algorithm_lib:maths suffix_expression.temp.data2 append value []
scoreboard players set #tal.maths.suffix_expression.change tal.input 1
