###字符串转表达式
##["1","+","2","-","c","o","s","(","3",")"] -> [[1],[+],[2],[-],[cos(],[3],[)]]
##[自定义输入] 字符串
# data modify storage t_algorithm_lib:maths string_to_expression.input set value []
##返回结果
data modify storage t_algorithm_lib:maths string_to_expression.result set value []

data modify storage t_algorithm_lib:maths string_to_expression.temp.list set value []
data modify storage t_algorithm_lib:maths string_to_expression.temp.separation set from storage t_algorithm_lib:maths string_to_expression.input
execute store result score #tal.maths.STExpression.list_count tal.str_parser run data get storage t_algorithm_lib:maths string_to_expression.temp.separation
scoreboard players set #tal.maths.STExpression.tier tal.str_parser 0
scoreboard players set #tal.maths.STExpression.is_tier tal.str_parser 0
scoreboard players set #tal.maths.STExpression.is_down_tier tal.str_parser 0
data remove storage t_algorithm_lib:maths string_to_expression.temp.list
#小数点
scoreboard players set #tal.maths.STExpression.is_doit tal.str_parser 0

execute if score #tal.maths.STExpression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/string_to_expression/loop


##[自定义输入] 字符串
data modify storage t_algorithm_lib:maths string_to_expression.input set value []