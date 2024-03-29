##定义循环的 类似 树结构   [[ [数据] , [指针],[指针对应的数据是否求导(0,1),1,0,01,1,1...] ],[],...]
data modify storage t_algorithm_lib:maths auto_derivation.main_tree set value []
data modify storage t_algorithm_lib:maths auto_derivation.temp.data set value []
data modify storage t_algorithm_lib:maths auto_derivation.content set value []

##初步分解
data modify storage t_algorithm_lib:maths auto_derivation.temp.separation set from storage t_algorithm_lib:maths auto_derivation.input
# data modify storage t_algorithm_lib:maths auto_derivation.temp.separation set value ['(', '2', '*', 'x', ')', '^', '2', '-', 'x', '-', '1', '+', '2', '*', 'x', '-', '(', 'x', '^', '3', '-', '(', 'c', 'o', 's', '(', '2', '*', 'x', '+', 'x', '^', '3', ')', ')', ')', '/', '(', '3', '*', 'x', ')']

execute unless score #tal.maths.derivation.taylor tal.input matches 1 run function t_algorithm_lib:maths/auto_derivation/separate/start
execute if score #tal.maths.derivation.taylor tal.input matches 1 run data modify storage t_algorithm_lib:maths auto_derivation.separation set from storage t_algorithm_lib:maths auto_derivation.input
scoreboard players set #tal.maths.derivation.taylor tal.input 0

data modify storage t_algorithm_lib:maths auto_derivation.content set from storage t_algorithm_lib:maths auto_derivation.separation

##去除无意义括号
data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths auto_derivation.content
function t_algorithm_lib:maths/auto_derivation/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths auto_derivation.content set from storage t_algorithm_lib:maths auto_derivation.temp.list
data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths auto_derivation.content
function t_algorithm_lib:maths/auto_derivation/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths auto_derivation.content set from storage t_algorithm_lib:maths auto_derivation.temp.list
# data modify storage t_algorithm_lib:maths auto_derivation.content set value [['('], [2], ['*'], ['x'], [')'], ['^'], [2], ['-'], ['x'], ['-'], [1], ['+'], [2], ['*'], ['x'], ['-'], ['('], ['x'], ['^'], [3], ['-'], ['('], ['cos('], [2], ['*'], ['x'], ['+'], ['x'], ['^'], [3], [')'], [')'], [')'], ['/'], ['('], [3], ['*'], ['x'], [')']]
# data modify storage t_algorithm_lib:maths auto_derivation.content set value [['('], [2], ['*'], ['x'], [')'], ['^'], [2], ['-'], ['x'], ['-'], [1]]
# data modify storage t_algorithm_lib:maths auto_derivation.content set value [['x'], ['*'], [2], ['*'], ['x'], ['*'], [2], ['*'], ['x']]

##分离符号
scoreboard players set #tal.maths.derivation.only tal.input 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.data set from storage t_algorithm_lib:maths auto_derivation.content
scoreboard players set #tal.maths.derivation.time tal.input 999999
function t_algorithm_lib:maths/auto_derivation/separate/symbol/start
data modify storage t_algorithm_lib:maths auto_derivation.temp.data set from storage t_algorithm_lib:maths auto_derivation.temp.data2
data modify storage t_algorithm_lib:maths auto_derivation.data set from storage t_algorithm_lib:maths auto_derivation.temp.data2
##循环初步得到 是否求导的列表
data modify storage t_algorithm_lib:maths auto_derivation.is_der set value []
execute store result score #tal.maths.derivation.index tal.input run data get storage t_algorithm_lib:maths auto_derivation.temp.data
function t_algorithm_lib:maths/auto_derivation/get_first


data modify storage t_algorithm_lib:maths auto_derivation.main_tree append value [[],[0],[]]
data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][0] set from storage t_algorithm_lib:maths auto_derivation.data
data modify storage t_algorithm_lib:maths auto_derivation.main_tree[-1][2] set from storage t_algorithm_lib:maths auto_derivation.is_der

scoreboard players set #tal.maths.derivation.main.end tal.input 0

##开始循环
scoreboard players set #tal.maths.derivation.main.time tal.input 500
scoreboard players set #tal.maths.derivation.main.is_return tal.input 0
function t_algorithm_lib:maths/auto_derivation/main/loop


execute if score #tal.maths.derivation.main.end tal.input matches 1 run function t_algorithm_lib:maths/auto_derivation/end