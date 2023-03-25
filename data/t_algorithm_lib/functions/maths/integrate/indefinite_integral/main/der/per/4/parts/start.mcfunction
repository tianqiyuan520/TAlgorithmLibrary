##分部积分
##反对幂指三 ,前者积回
## ∫udv = uv - ∫vdu
## ∫f(x)g(x)dx = f(x)*G(x) - ∫f'(x)G(x)dx
tellraw @a ["乘法的数值 ",{"nbt":"integrate.main_tree[-1]","storage":"t_algorithm_lib:maths","color":"#31BEB0"}]
tellraw @a ["乘法的数值2 ",{"nbt":"integrate.main.new_data","storage":"t_algorithm_lib:maths","color":"#31BEB0"}]

# execute store result score #tal.maths.integrate.index tal.str_parser run data get storage t_algorithm_lib:maths integrate.main_tree[-1][1][0]
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run say 修改修改
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run data modify storage t_algorithm_lib:maths integrate.main.new_data[0] set from storage t_algorithm_lib:maths integrate.main_tree[-1][0][2][0]
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run data modify storage t_algorithm_lib:maths integrate.main.new_data[1] set from storage t_algorithm_lib:maths integrate.main_tree[-1][0][2][1]
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run data modify storage t_algorithm_lib:maths integrate.main.new_data[2] set value []

# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run data modify storage t_algorithm_lib:maths integrate.main.new_data[2] append from storage t_algorithm_lib:maths integrate.main_tree[-1][0][2][]
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run data remove storage t_algorithm_lib:maths integrate.main.new_data[2][0]
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run data remove storage t_algorithm_lib:maths integrate.main.new_data[2][0]
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run data remove storage t_algorithm_lib:maths integrate.main.new_data[2][0]

# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run tellraw @a ["乘法的数值2new ",{"nbt":"integrate.main_tree[-1][0][2]","storage":"t_algorithm_lib:maths","color":"#31BEB0"}]
# execute if data storage t_algorithm_lib:maths integrate.main_tree[-1][3][0].partly if score #tal.maths.integrate.index tal.str_parser matches 3 run tellraw @a ["乘法的数值2new ",{"nbt":"integrate.main.new_data","storage":"t_algorithm_lib:maths","color":"#31BEB0"}]

##判断两式不为数字
scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 0
data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:maths integrate.main.new_data[0][0][0][0]
function t_algorithm_lib:array/elements_type_check/start
data modify storage t_algorithm_lib:maths integrate.main.change set value [[0]]
execute if data storage t_algorithm_lib:array temp{return:'TAG_Int'} run scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 1
execute if data storage t_algorithm_lib:array temp{return:'TAG_Double'} run scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 1
##
data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:maths integrate.main.new_data[2][0][0][0]
function t_algorithm_lib:array/elements_type_check/start
data modify storage t_algorithm_lib:maths integrate.main.change set value [[0]]
execute if data storage t_algorithm_lib:array temp{return:'TAG_Int'} run scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 2
execute if data storage t_algorithm_lib:array temp{return:'TAG_Double'} run scoreboard players set #tal.maths.integrate.main.check_s tal.str_parser 2
##
execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/start2
execute if score #tal.maths.integrate.main.check_s tal.str_parser matches 1..2 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/start3
##
