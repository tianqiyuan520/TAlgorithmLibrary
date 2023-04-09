###线性方程求解（克莱姆法则）
##Cramer's rule
## Ax = b
##[自定义输入]系数行列式 A
# data modify storage t_algorithm_lib:maths linsolve.input.list set value [[]]
# data modify storage t_algorithm_lib:maths linsolve.input.list set value [[1d,1d,1d],[1d,-1d,5d],[-1d,1d,6d]]
##[自定义输入]等式右边的值 b（一维数组）
# data modify storage t_algorithm_lib:maths linsolve.input.list2 set value [[]]
# data modify storage t_algorithm_lib:maths linsolve.input.list2 set value [1d,6d,9d]
##例如:
##2x+y=3   ==> list: [                     list2:[3d,5d]
##3x-0*y=5             [2d,1d],                      
##                     [3d,0d]              
##                    ]
##
##[返回结果] 字符串或x的解的数组
# data get storage t_algorithm_lib:maths linsolve.result

data modify storage t_algorithm_lib:maths linsolve.main.list2 set from storage t_algorithm_lib:maths linsolve.input.list2

##求D值
data modify storage t_algorithm_lib:maths determinant.expansion.input set from storage t_algorithm_lib:maths linsolve.input.list
##[自定义输入]递归次数
scoreboard players set #tal.maths.determinant.time tal.input 500
scoreboard players set #tal.maths.determinant.remind tal.input 0

function t_algorithm_lib:maths/determinant/expansion/start


data modify storage t_algorithm_lib:maths linsolve.main.value set from storage t_algorithm_lib:maths determinant.expansion.result
##将list转置
data modify storage t_algorithm_lib:maths linsolve.list set from storage t_algorithm_lib:maths linsolve.input.list
data modify storage t_algorithm_lib:maths linsolve.list2 set value []
execute store result score #tal.maths.linsolve.count tal.input run data get storage t_algorithm_lib:maths linsolve.list[0]
execute if score #tal.maths.linsolve.count tal.input matches 1.. run data modify storage t_algorithm_lib:maths linsolve.list2 prepend value []
execute if score #tal.maths.linsolve.count tal.input matches 1.. run function t_algorithm_lib:maths/linsolve/take_loop

data modify storage t_algorithm_lib:maths linsolve.main.list set from storage t_algorithm_lib:maths linsolve.list2
##求各个未知数的D_i和未知数值
##无穷多解
execute store result score #tal.maths.linsolve.check tal.input run data get storage t_algorithm_lib:maths linsolve.main.value
execute if score #tal.maths.linsolve.check tal.input matches 0 run data modify storage t_algorithm_lib:maths linsolve.result set value 'Infinity'
##唯一解
execute unless score #tal.maths.linsolve.check tal.input matches 0 run function t_algorithm_lib:maths/linsolve/main/main