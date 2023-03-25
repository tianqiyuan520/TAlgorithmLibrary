
execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.temp.separation
scoreboard players set #tal.maths.suffix_expression.tier tal.str_parser 0
scoreboard players set #tal.maths.suffix_expression.is_tier tal.str_parser 0
scoreboard players set #tal.maths.suffix_expression.is_down_tier tal.str_parser 0
data remove storage t_algorithm_lib:maths suffix_expression.temp.list
data modify storage t_algorithm_lib:maths suffix_expression.separation set value []

execute if score #tal.maths.suffix_expression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/suffix_expression/separate/symbol/start
