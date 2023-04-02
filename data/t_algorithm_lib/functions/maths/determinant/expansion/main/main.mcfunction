##返回
execute store result score #tal.maths.determinant.index tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][2][0]
execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0]
execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree
execute if score #tal.maths.determinant.count tal.input matches 1 if score #tal.maths.determinant.index tal.input >= #tal.maths.determinant.num tal.input run function t_algorithm_lib:maths/determinant/expansion/main/end
execute if score #tal.maths.determinant.count tal.input matches 2.. if score #tal.maths.determinant.index tal.input >= #tal.maths.determinant.num tal.input run function t_algorithm_lib:maths/determinant/expansion/main/return

##指针增加
function t_algorithm_lib:maths/determinant/expansion/main/index_add


##根据旧指针 获取新行列式
execute store result score #tal.maths.determinant.index tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][2][0]
execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0]
execute if score #tal.maths.determinant.index tal.input < #tal.maths.determinant.num tal.input run function t_algorithm_lib:maths/determinant/expansion/main/build


execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree
scoreboard players remove #tal.maths.determinant.loop tal.input 1
execute if score #tal.maths.determinant.count tal.input matches 1.. if score #tal.maths.determinant.loop tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/main/main