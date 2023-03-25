scoreboard players set #tal.maths.suffix_expression.main.c-t tal.str_parser 0
data modify storage t_algorithm_lib:maths suffix_expression.temp.list3 set value [[]]
execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.temp.list2
execute if score #tal.maths.suffix_expression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/suffix_expression/separate/commas/loop