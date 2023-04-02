##判断是否直接对角线展开

execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][4][0]
execute if score #tal.maths.determinant.num tal.input matches 1 run function t_algorithm_lib:maths/determinant/expansion/main/diag/1
execute if score #tal.maths.determinant.num tal.input matches 2 run function t_algorithm_lib:maths/determinant/expansion/main/diag/2
execute if score #tal.maths.determinant.num tal.input matches 3 run function t_algorithm_lib:maths/determinant/expansion/main/diag/3
execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][4][0]
execute if score #tal.maths.determinant.num tal.input matches 4.. run function t_algorithm_lib:maths/determinant/expansion/main/take