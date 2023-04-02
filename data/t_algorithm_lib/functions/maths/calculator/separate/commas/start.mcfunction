scoreboard players set #tal.maths.calculator.main.c-t tal.input 0
data modify storage t_algorithm_lib:maths calculator.temp.list3 set value [[]]
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.temp.list2
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/separate/commas/loop