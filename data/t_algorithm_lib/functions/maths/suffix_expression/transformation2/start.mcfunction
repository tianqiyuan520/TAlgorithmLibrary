##后缀转中缀

# data modify storage t_algorithm_lib:maths suffix_expression.transformation2.input set value [['x'],['x'],['+']]


data modify storage t_algorithm_lib:maths suffix_expression.transformation2.s3 set from storage t_algorithm_lib:maths suffix_expression.transformation2.input
##生成两个栈
data modify storage t_algorithm_lib:maths suffix_expression.transformation2.s1 set value []
data modify storage t_algorithm_lib:maths suffix_expression.transformation2.result set value []
execute store result score #tal.maths.suffix_expression.list_count tal.input run data get storage t_algorithm_lib:maths suffix_expression.transformation2.s3
execute if score #tal.maths.suffix_expression.list_count tal.input matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation2/loop