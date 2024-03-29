##获取指针
data modify storage t_algorithm_lib:maths integrate.main.data set from storage t_algorithm_lib:maths integrate.main_tree[-1][0]

##获取数据
execute store result score #tal.maths.integrate.main.index tal.input run data get storage t_algorithm_lib:maths integrate.main_tree[-1][1][0]
execute store result score #tal.maths.integrate.main.count tal.input run data get storage t_algorithm_lib:maths integrate.main_tree[-1][0]
scoreboard players remove #tal.maths.integrate.main.count tal.input 1

##获取 对应数据
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:maths integrate.main_tree[-1][0]
scoreboard players operation #tal.array.get_element_by_index.index tal.input = #tal.maths.integrate.main.index tal.input
function t_algorithm_lib:array/get_element_by_index/start
data modify storage t_algorithm_lib:maths integrate.main.this_data set from storage t_algorithm_lib:array get_element_by_index.return

##获取 对应数据是否需积
# data modify storage t_algorithm_lib:maths integrate.main.is_der set from storage t_algorithm_lib:maths integrate.main_tree[-1][2]
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:maths integrate.main_tree[-1][2]
scoreboard players operation #tal.array.get_element_by_index.index tal.input = #tal.maths.integrate.main.index tal.input
function t_algorithm_lib:array/get_element_by_index/start
execute store result score #tal.maths.integrate.main.is_der tal.input run data get storage t_algorithm_lib:array get_element_by_index.return
##指针的增加
execute if score #tal.maths.integrate.main.index tal.input < #tal.maths.integrate.main.count tal.input run function t_algorithm_lib:maths/integrate/indefinite_integral/main/index_increase
execute if score #tal.maths.integrate.main.index tal.input = #tal.maths.integrate.main.count tal.input run scoreboard players add #tal.maths.integrate.main.is_return tal.input 1
##是否回溯
execute if score #tal.maths.integrate.main.index tal.input = #tal.maths.integrate.main.count tal.input if score #tal.maths.integrate.main.is_return tal.input matches 2.. run function t_algorithm_lib:maths/integrate/indefinite_integral/main/is_return
##该位置是否可积
execute if score #tal.maths.integrate.main.is_der tal.input matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/start

# tellraw @a [{"nbt":"integrate.main_tree","storage": "t_algorithm_lib:maths"}]