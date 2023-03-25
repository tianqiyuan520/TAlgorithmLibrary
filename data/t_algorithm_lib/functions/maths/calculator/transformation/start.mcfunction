##中缀转后缀

# data modify storage t_algorithm_lib:maths calculator.transformation.input set value [['x'],['+'],['x'],['-'],[2]]
# data modify storage t_algorithm_lib:maths calculator.transformation.input set value [['x'],['+'],[6],['!']]



data modify storage t_algorithm_lib:maths calculator.transformation.s3 set from storage t_algorithm_lib:maths calculator.transformation.input 
##生成两个栈
##结果
data modify storage t_algorithm_lib:maths calculator.transformation.s1 set value []
##符号栈
data modify storage t_algorithm_lib:maths calculator.transformation.s2 set value []

execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.transformation.s3
execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/transformation/loop