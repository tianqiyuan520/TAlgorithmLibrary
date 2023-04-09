##为行列式，则开始展开
##将行列式转置（提取每一列元素）
data modify storage t_algorithm_lib:maths determinant.expansion.list set from storage t_algorithm_lib:maths determinant.expansion.input
data modify storage t_algorithm_lib:maths determinant.expansion.list2 set value []
execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.list[0]
execute if score #tal.maths.determinant.count tal.input matches 1.. run data modify storage t_algorithm_lib:maths determinant.expansion.list2 prepend value []
execute if score #tal.maths.determinant.count tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/take_loop

##主树 [ [列，[系数],[指针],[这个行列式，展开返回的结果，代数余子式的各个运算值] ,[阶数] ]     ]
data modify storage t_algorithm_lib:maths determinant.expansion.main_tree set value []
data modify storage t_algorithm_lib:maths determinant.expansion.main_tree append value [[],[1d],[-1],[],[0]]
data modify storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0] set from storage t_algorithm_lib:maths determinant.expansion.list2
execute store result storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][4][0] int 1 run scoreboard players get #tal.num.determinant.t tal.input
# tellraw @a ["当前树",{"nbt":"determinant.expansion.main_tree[]","storage":"t_algorithm_lib:maths","color":"#7C881E"}]

function t_algorithm_lib:maths/determinant/expansion/main/main