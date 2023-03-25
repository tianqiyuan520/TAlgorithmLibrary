tellraw @a ["普通数乘1",{"nbt":"integrate.main.new_data","storage":"t_algorithm_lib:maths","color":"#B8881E"}]

data modify storage t_algorithm_lib:maths integrate.main_tree append value [[[],['*'],[]],[2],[0,0,1]]

execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[0]
execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][2] set from storage t_algorithm_lib:maths integrate.main.new_data[2]

execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 2 run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][0] set from storage t_algorithm_lib:maths integrate.main.new_data[2]
execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 2 run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][2] set from storage t_algorithm_lib:maths integrate.main.new_data[0]

tellraw @a ["普通数乘2",{"nbt":"integrate.main_tree[-1][0]","storage":"t_algorithm_lib:maths","color":"#B8881E"}]
