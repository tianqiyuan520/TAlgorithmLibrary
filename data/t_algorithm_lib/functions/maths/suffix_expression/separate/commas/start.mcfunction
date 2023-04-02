scoreboard players set #tal.maths.suffix_expression.main.c-t tal.input 0
data modify storage t_algorithm_lib:maths suffix_expression.temp.list3 set value [[]]
execute store result score #tal.maths.suffix_expression.list_count tal.input run data get storage t_algorithm_lib:maths suffix_expression.temp.list2
execute if score #tal.maths.suffix_expression.list_count tal.input matches 1.. run function t_algorithm_lib:maths/suffix_expression/separate/commas/loop