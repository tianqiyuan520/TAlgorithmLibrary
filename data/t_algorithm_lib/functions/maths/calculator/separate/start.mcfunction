
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.temp.separation
scoreboard players set #tal.maths.calculator.tier tal.input 0
scoreboard players set #tal.maths.calculator.is_tier tal.input 0
scoreboard players set #tal.maths.calculator.is_down_tier tal.input 0
data remove storage t_algorithm_lib:maths calculator.temp.list
data modify storage t_algorithm_lib:maths calculator.separation set value []

execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/separate/symbol/start
