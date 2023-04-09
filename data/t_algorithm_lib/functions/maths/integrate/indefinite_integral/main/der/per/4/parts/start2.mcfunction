
data modify storage t_algorithm_lib:maths integrate.main_tree append value [[[-1],['*'],[],['+'],[],['*'],[]],[2],[0,0,0,0,0,0,1],[{partly:1b}]]
# data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[0]
##
##积回
data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][6] set from storage t_algorithm_lib:maths integrate.main.new_data[2]
##导
data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][4] set from storage t_algorithm_lib:maths integrate.main.new_data[0]

# tellraw @a ["主树",{"nbt":"integrate.main_tree[][0]","storage":"t_algorithm_lib:maths","color":"#B8881E"}]

##判断哪个积
##优先级
scoreboard players set #tal.maths.integrate.symbol1 tal.input 0
scoreboard players set #tal.maths.integrate.symbol2 tal.input 0
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/1
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/2
# tellraw @a ["1 ",{"score":{"name": "#tal.maths.integrate.symbol1","objective": "tal.input"}}]
# tellraw @a ["2 ",{"score":{"name": "#tal.maths.integrate.symbol2","objective": "tal.input"}}]
execute if score #tal.maths.integrate.symbol1 tal.input > #tal.maths.integrate.symbol2 tal.input run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][6] set from storage t_algorithm_lib:maths integrate.main.new_data[0]
execute if score #tal.maths.integrate.symbol1 tal.input > #tal.maths.integrate.symbol2 tal.input run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][4] set from storage t_algorithm_lib:maths integrate.main.new_data[2]
#


tellraw @a ["求导: ",{"nbt":"integrate.main_tree[-1][0][4]","storage":"t_algorithm_lib:maths","color":"#31BEB0"}]
tellraw @a ["积分: ",{"nbt":"integrate.main_tree[-1][0][6]","storage":"t_algorithm_lib:maths","color":"#31BEB0"}]

##求导
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/derivation
# data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][4] set from storage t_algorithm_lib:maths auto_derivation.result

tellraw @a ["求导end: ",{"nbt":"auto_derivation.result","storage":"t_algorithm_lib:maths"}]

##判断导数值是否为0
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.result
execute unless data storage t_algorithm_lib:maths integrate.temp.list_check{char:[[0]]} run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/not_zero_add 
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:[[0]]} run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/is_zero 
