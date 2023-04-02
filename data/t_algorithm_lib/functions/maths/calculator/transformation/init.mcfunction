##中缀转后缀[前提/函数加括号]

# data modify storage t_algorithm_lib:maths calculator.content set value [['cos('],['x'],[')'],['+'],['x']]

scoreboard players set #tal.maths.calculator.only tal.input 1
data modify storage t_algorithm_lib:maths calculator.temp.data set from storage t_algorithm_lib:maths calculator.content
scoreboard players set #tal.maths.calculator.time tal.input 999999
##处理函数
function t_algorithm_lib:maths/calculator/separate/symbol/start



