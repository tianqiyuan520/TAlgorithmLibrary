


data modify storage t_algorithm_lib:maths calculator.transformation.s1 append from storage t_algorithm_lib:maths calculator.transformation.s2[-1]

data remove storage t_algorithm_lib:maths calculator.transformation.s2[-1]
execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.transformation.s2
execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/transformation/end_loop