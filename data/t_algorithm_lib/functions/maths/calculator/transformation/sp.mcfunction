data modify storage t_algorithm_lib:maths calculator.transformation.s1 append from storage t_algorithm_lib:maths calculator.transformation.s2[-1]
data remove storage t_algorithm_lib:maths calculator.transformation.s2[-1]
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.transformation.s2
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/transformation/sp