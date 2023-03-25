data modify storage t_algorithm_lib:maths calculator.temp.per append from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.data2[-1]
execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []
# data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []
data modify storage t_algorithm_lib:maths calculator.temp.data2[-1] append from storage t_algorithm_lib:maths calculator.temp.data[0][0]
data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []
scoreboard players add #tal.maths.calculator.time_ tal.str_parser 1