data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.list2[0]
scoreboard players set #tal.maths.calculator.main.c-s tal.str_parser 0

execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:[',']} if score #tal.maths.calculator.main.c-t tal.str_parser matches 0 run scoreboard players set #tal.maths.calculator.main.c-s tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:[',']} if score #tal.maths.calculator.main.c-t tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths calculator.temp.list3 append value []

execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:[',']} if score #tal.maths.calculator.main.c-t tal.str_parser matches 0 run scoreboard players set #tal.maths.calculator.main.c-t tal.str_parser 1

execute if score #tal.maths.calculator.main.c-s tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths calculator.temp.list3[-1] append from storage t_algorithm_lib:maths calculator.temp.list2[0]





data remove storage t_algorithm_lib:maths calculator.temp.list2[0]
execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.list2
execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/separate/commas/loop