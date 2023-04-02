data modify storage t_algorithm_lib:maths suffix_expression.temp.per append from storage t_algorithm_lib:maths suffix_expression.temp.data[0][0]
execute store result score #tal.maths.suffix_expression.list_count tal.input run data get storage t_algorithm_lib:maths suffix_expression.temp.data2[-1]
execute if score #tal.maths.suffix_expression.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths suffix_expression.temp.data2 append value []
# data modify storage t_algorithm_lib:maths suffix_expression.temp.data2 append value []
data modify storage t_algorithm_lib:maths suffix_expression.temp.data2[-1] append from storage t_algorithm_lib:maths suffix_expression.temp.data[0][0]
data modify storage t_algorithm_lib:maths suffix_expression.temp.data2 append value []
scoreboard players add #tal.maths.suffix_expression.time_ tal.input 1