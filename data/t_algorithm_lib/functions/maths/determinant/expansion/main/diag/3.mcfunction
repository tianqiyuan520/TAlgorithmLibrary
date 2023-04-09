##二阶对角线展开
execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][0][0] 10
execute store result score #tal.maths.determinant.num2 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][1][1] 10
execute store result score #tal.maths.determinant.num3 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][2][2] 10
scoreboard players operation #tal.maths.determinant.num tal.input *= #tal.maths.determinant.num2 tal.input
scoreboard players operation #tal.maths.determinant.num tal.input *= #tal.maths.determinant.num3 tal.input



execute store result score #tal.maths.determinant.num3 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][0][1] 10
execute store result score #tal.maths.determinant.num4 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][1][2] 10
execute store result score #tal.maths.determinant.num5 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][2][0] 10
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num4 tal.input
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num5 tal.input

scoreboard players operation #tal.maths.determinant.num tal.input += #tal.maths.determinant.num3 tal.input

execute store result score #tal.maths.determinant.num3 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][0][2] 10
execute store result score #tal.maths.determinant.num4 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][1][0] 10
execute store result score #tal.maths.determinant.num5 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][2][1] 10
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num4 tal.input
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num5 tal.input

scoreboard players operation #tal.maths.determinant.num tal.input += #tal.maths.determinant.num3 tal.input


##减
execute store result score #tal.maths.determinant.num3 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][0][2] 10
execute store result score #tal.maths.determinant.num4 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][1][1] 10
execute store result score #tal.maths.determinant.num5 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][2][0] 10
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num4 tal.input
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num5 tal.input

scoreboard players operation #tal.maths.determinant.num tal.input -= #tal.maths.determinant.num3 tal.input


execute store result score #tal.maths.determinant.num3 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][0][0] 10
execute store result score #tal.maths.determinant.num4 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][1][2] 10
execute store result score #tal.maths.determinant.num5 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][2][1] 10
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num4 tal.input
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num5 tal.input

scoreboard players operation #tal.maths.determinant.num tal.input -= #tal.maths.determinant.num3 tal.input


execute store result score #tal.maths.determinant.num3 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][0][1] 10
execute store result score #tal.maths.determinant.num4 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][1][0] 10
execute store result score #tal.maths.determinant.num5 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0][2][2] 10
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num4 tal.input
scoreboard players operation #tal.maths.determinant.num3 tal.input *= #tal.maths.determinant.num5 tal.input

scoreboard players operation #tal.maths.determinant.num tal.input -= #tal.maths.determinant.num3 tal.input

data modify storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3] append value 0.0
data modify storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][2][0] set value 5

execute store result storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3][-1] double 0.001 run scoreboard players get #tal.maths.determinant.num tal.input
