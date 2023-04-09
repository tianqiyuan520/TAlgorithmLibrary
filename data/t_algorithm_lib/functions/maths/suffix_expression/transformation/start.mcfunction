##中缀转后缀

# data modify storage t_algorithm_lib:maths suffix_expression.transformation.input set value [['x'],['+'],['x'],['-'],[2]]


data modify storage t_algorithm_lib:maths suffix_expression.transformation.s3 set from storage t_algorithm_lib:maths suffix_expression.transformation.input 
##生成两个栈
data modify storage t_algorithm_lib:maths suffix_expression.transformation.s1 set value []
data modify storage t_algorithm_lib:maths suffix_expression.transformation.s2 set value []

execute store result score #tal.maths.suffix_expression.list_count tal.input run data get storage t_algorithm_lib:maths suffix_expression.transformation.s3
execute if score #tal.maths.suffix_expression.list_count tal.input matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation/loop