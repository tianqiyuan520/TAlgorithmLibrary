##获取行列式值

execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3][0] 1000
data remove storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3][0]
execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][3]
execute if score #tal.maths.determinant.count tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/main/re_loop

##*系数
execute store result score #tal.maths.determinant.num2 tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][1][0] 1000

execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree

execute if score #tal.maths.determinant.count tal.input matches 1 run function t_algorithm_lib:maths/determinant/expansion/main/end


data modify storage t_algorithm_lib:maths determinant.expansion.main_tree[-2][3] append value 0.1
execute store result storage t_algorithm_lib:maths determinant.expansion.main_tree[-2][3][-1] double 0.000001 run scoreboard players operation #tal.maths.determinant.num2 tal.input *= #tal.maths.determinant.num tal.input
data remove storage t_algorithm_lib:maths determinant.expansion.main_tree[-1]
