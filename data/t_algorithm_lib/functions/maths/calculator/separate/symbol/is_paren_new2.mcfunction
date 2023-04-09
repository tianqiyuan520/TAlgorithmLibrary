execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.temp.data2[-1]
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []
data modify storage t_algorithm_lib:maths calculator.temp.data2[-1] append from storage t_algorithm_lib:maths calculator.temp.data[0]
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.temp.data
execute if score #tal.maths.calculator.list_count tal.input matches 2.. run data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []
scoreboard players set #tal.maths.calculator.change tal.input 1