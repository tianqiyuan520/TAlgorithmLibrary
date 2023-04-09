##

execute store result score #tal.maths.determinant.num2 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3][0] 1000

scoreboard players operation #tal.maths.determinant.num tal.input += #tal.maths.determinant.num2 tal.input


data remove storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3][0]
execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3]
execute if score #tal.maths.determinant.count tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/main/re_loop