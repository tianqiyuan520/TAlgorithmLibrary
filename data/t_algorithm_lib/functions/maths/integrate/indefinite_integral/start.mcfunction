##定义循环的 类似 树结构   [[ [数据] , [指针],[指针对应的数据是否积(0,1),1,0,01,1,1...] ],[],...]
data modify storage t_algorithm_lib:maths integrate.main_tree set value []
data modify storage t_algorithm_lib:maths integrate.temp.data set value []
data modify storage t_algorithm_lib:maths integrate.content set value []

##初步分解
data modify storage t_algorithm_lib:maths integrate.temp.separation set from storage t_algorithm_lib:maths integrate.input
# data modify storage t_algorithm_lib:maths integrate.temp.separation set value ['(', '2', '*', 'x', ')', '^', '2', '-', 'x', '-', '1', '+', '2', '*', 'x', '-', '(', 'x', '^', '3', '-', '(', 'c', 'o', 's', '(', '2', '*', 'x', '+', 'x', '^', '3', ')', ')', ')', '/', '(', '3', '*', 'x', ')']

execute unless score #tal.maths.integrate.taylor tal.input matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/start
execute if score #tal.maths.integrate.taylor tal.input matches 1 run data modify storage t_algorithm_lib:maths integrate.separation set from storage t_algorithm_lib:maths integrate.input
scoreboard players set #tal.maths.integrate.taylor tal.input 0

data modify storage t_algorithm_lib:maths integrate.content set from storage t_algorithm_lib:maths integrate.separation

##去除无意义括号
data modify storage t_algorithm_lib:maths integrate.temp.list set from storage t_algorithm_lib:maths integrate.content
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths integrate.content set from storage t_algorithm_lib:maths integrate.temp.list
data modify storage t_algorithm_lib:maths integrate.temp.list set from storage t_algorithm_lib:maths integrate.content
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/start
data modify storage t_algorithm_lib:maths integrate.content set from storage t_algorithm_lib:maths integrate.temp.list
# data modify storage t_algorithm_lib:maths integrate.content set value [['('], [2], ['*'], ['x'], [')'], ['^'], [2], ['-'], ['x'], ['-'], [1], ['+'], [2], ['*'], ['x'], ['-'], ['('], ['x'], ['^'], [3], ['-'], ['('], ['cos('], [2], ['*'], ['x'], ['+'], ['x'], ['^'], [3], [')'], [')'], [')'], ['/'], ['('], [3], ['*'], ['x'], [')']]
# data modify storage t_algorithm_lib:maths integrate.content set value [['('], [2], ['*'], ['x'], [')'], ['^'], [2], ['-'], ['x'], ['-'], [1]]
# data modify storage t_algorithm_lib:maths integrate.content set value [['x'], ['*'], [2], ['*'], ['x'], ['*'], [2], ['*'], ['x']]

##分离符号
scoreboard players set #tal.maths.integrate.only tal.input 1
data modify storage t_algorithm_lib:maths integrate.temp.data set from storage t_algorithm_lib:maths integrate.content
scoreboard players set #tal.maths.integrate.time tal.input 999999
function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/start
data modify storage t_algorithm_lib:maths integrate.temp.data set from storage t_algorithm_lib:maths integrate.temp.data2
data modify storage t_algorithm_lib:maths integrate.data set from storage t_algorithm_lib:maths integrate.temp.data2
##循环初步得到 是否积的列表
data modify storage t_algorithm_lib:maths integrate.is_der set value []
execute store result score #tal.maths.integrate.index tal.input run data get storage t_algorithm_lib:maths integrate.temp.data
function t_algorithm_lib:maths/integrate/indefinite_integral/get_first


data modify storage t_algorithm_lib:maths integrate.main_tree append value [[],[0],[]]
data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0] set from storage t_algorithm_lib:maths integrate.data
data modify storage t_algorithm_lib:maths integrate.main_tree[-1][2] set from storage t_algorithm_lib:maths integrate.is_der

scoreboard players set #tal.maths.integrate.main.end tal.input 0

##开始循环
scoreboard players set #tal.maths.integrate.main.time tal.input 20
scoreboard players set #tal.maths.integrate.main.is_return tal.input 0
function t_algorithm_lib:maths/integrate/indefinite_integral/main/loop

execute if score #tal.maths.integrate.main.end tal.input matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/end