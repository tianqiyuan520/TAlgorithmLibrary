##获取上一个的指针
execute store result score #tal.maths.integrate.main.index_p tal.str_parser run data get storage t_algorithm_lib:maths integrate.main_tree[-2][1][0]
##获取 对应数据是否需积
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:maths integrate.main_tree[-2][2]
scoreboard players operation #tal.array.get_element_by_index.index tal.str_parser = #tal.maths.integrate.main.index_p tal.str_parser
scoreboard players remove #tal.array.get_element_by_index.index tal.str_parser 1
function t_algorithm_lib:array/get_element_by_index/start
execute store result score #tal.maths.integrate.main.is_der_p tal.str_parser run data get storage t_algorithm_lib:array get_element_by_index.return


tellraw @a ["该值:",{"nbt":"integrate.main_tree[-1][0]","storage":"t_algorithm_lib:maths"}]
tellraw @a ["被替换",{"nbt":"integrate.main_tree[-2][0]","storage":"t_algorithm_lib:maths","color":"red"}]
# tellraw @a ["return主树",{"nbt":"integrate.main_tree[]","storage":"t_algorithm_lib:maths","color":"#B8DCAA"}]

##判断
execute if score #tal.maths.integrate.main.index_p tal.str_parser matches 1.. if score #tal.maths.integrate.main.is_der_p tal.str_parser matches 1 run scoreboard players remove #tal.maths.integrate.main.index_p tal.str_parser 1

##重新赋值 
execute store result score #tal.maths.integrate.index tal.str_parser run data get storage t_algorithm_lib:maths integrate.main_tree[-2][0]
execute store result score #tal.maths.integrate.index2 tal.str_parser run data get storage t_algorithm_lib:maths integrate.main_tree[-2][0]
scoreboard players operation #tal.maths.integrate.index2 tal.str_parser -= #tal.maths.integrate.main.index_p tal.str_parser
function t_algorithm_lib:maths/integrate/indefinite_integral/main/change

tellraw @a ["修改后 ",{"nbt":"integrate.main_tree[-2][0]","storage":"t_algorithm_lib:maths","color":"blue"}]

##获取是否为分部积分

execute if data storage t_algorithm_lib:maths integrate.main_tree[-2][3][0].partly run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/return


data remove storage t_algorithm_lib:maths integrate.main_tree[-1]