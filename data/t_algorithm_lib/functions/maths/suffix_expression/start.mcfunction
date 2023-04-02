###后缀表达式

# data modify storage t_algorithm_lib:maths suffix_expression.content set value [['cos('],['x'],[')'],['+'],['x']]
# data modify storage t_algorithm_lib:maths suffix_expression.content set value [['('],['('], ['('], ['('], [1], [')'], [')'], ['*'], ['('], ['('], [-1], ['*'], ['cos('],['x'], [')'], [')'], [')'], [')'], [')']]

scoreboard players set #tal.maths.suffix_expression.only tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.data set from storage t_algorithm_lib:maths suffix_expression.content
scoreboard players set #tal.maths.suffix_expression.time tal.input 999999
##处理函数
function t_algorithm_lib:maths/suffix_expression/separate/symbol/start





data modify storage t_algorithm_lib:maths suffix_expression.content set value [['cos('],['x'],[')'],['+'],['x']]
