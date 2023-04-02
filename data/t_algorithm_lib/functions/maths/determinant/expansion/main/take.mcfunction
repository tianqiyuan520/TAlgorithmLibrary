##构建新的子节点

##主树 [ [列，[系数],[指针],[这个行列式，展开返回的结果，代数余子式的各个运算值] ,[阶数] ]     ]
data modify storage t_algorithm_lib:maths determinant.expansion.main_tree append value [[],[1d],[-1],[],[0]]

##处理阶数
execute store result score #tal.maths.determinant.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-2][4][0]
execute store result storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][4][0] int 1 run scoreboard players remove #tal.maths.determinant.num tal.input 1
##根据指针 获取A
execute store result score #tal.maths.determinant.index tal.input run data get storage t_algorithm_lib:maths determinant.expansion.main_tree[-2][2][0]
##
data modify storage t_algorithm_lib:maths determinant.expansion.list set from storage t_algorithm_lib:maths determinant.expansion.main_tree[-2][0]
##每行第一个
data modify storage t_algorithm_lib:maths determinant.expansion.list2 set value []
data modify storage t_algorithm_lib:maths determinant.expansion.list2 append from storage t_algorithm_lib:maths determinant.expansion.main_tree[-2][0][][0]

##舍去每行第一个
data remove storage t_algorithm_lib:maths determinant.expansion.list[][0]
##新行列式
data modify storage t_algorithm_lib:maths determinant.expansion.list3 set value []
##获取系数 系数*-1^(指针)*1 与 获取新行列式
execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.list2
scoreboard players set #tal.maths.determinant.index_ tal.input 0
execute if score #tal.maths.determinant.count tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/main/take_loop

##行列式
data modify storage t_algorithm_lib:maths determinant.expansion.main_tree[-1][0] set from storage t_algorithm_lib:maths determinant.expansion.list3
