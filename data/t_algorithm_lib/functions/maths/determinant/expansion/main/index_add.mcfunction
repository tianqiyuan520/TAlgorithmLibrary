##指针+1
execute store result score #tal.maths.determinant.index tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][2][0]

execute store result storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][2][0] int 1 run scoreboard players add #tal.maths.determinant.index tal.input 1