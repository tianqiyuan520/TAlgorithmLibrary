

execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3][0] 1000
data remove storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3][0]
execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3]
execute if score #tal.maths.determinant.count tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/main/re_loop

execute store result storage t_algorithm_lib:maths determinant.expansion.result double 0.001 run scoreboard players get #tal.maths.determinant.num tal.input
execute if score #tal.maths.determinant.remind tal.input matches 1 run tellraw @a ["运算结束\nresult: ",{"nbt":"determinant.expansion.result","storage": "t_algorithm_lib:maths","color": "green"}]

data remove storage t_algorithm_lib:maths determinant.expansion.main_tree[-1]