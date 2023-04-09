##处理系数
execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.list2[0] 1000

## 系数*-1^(指针)
##指针求余
scoreboard players set #2 tal.input 2
scoreboard players set #-1 tal.input -1
scoreboard players operation #tal.maths.determinant.num2 tal.input = #tal.maths.determinant.index_ tal.input 
scoreboard players operation #tal.maths.determinant.num2 tal.input %= #2 tal.input
##
execute if score #tal.maths.determinant.num2 tal.input matches 1 run scoreboard players operation #tal.maths.determinant.num tal.input *= #-1 tal.input

execute store result storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][1][0] double 0.001 run scoreboard players get #tal.maths.determinant.num tal.input

