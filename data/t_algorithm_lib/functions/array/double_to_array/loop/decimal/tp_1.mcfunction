
scoreboard players remove #tal.array.double_to_array.total tal.input 1
##判断
##是否进入下一级
#条件取反
scoreboard players set #tal.array.double_to_array.is_more tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-0.01 ~ as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=tal.array.double_to_array] if entity @s[tag=tal.array.double_to_array.3] run scoreboard players set #tal.array.double_to_array.is_more tal.input 1
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~0.01 ~ as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=tal.array.double_to_array] if entity @s[tag=tal.array.double_to_array.3] run scoreboard players set #tal.array.double_to_array.is_more tal.input 1
execute if score #tal.array.double_to_array.is_more tal.input matches 1 run scoreboard players add #tal.array.double_to_array.tier tal.input 1
execute if score #tal.array.double_to_array.is_more tal.input matches 1 run data modify storage t_algorithm_lib:array double_to_array.result append value [0]
execute if entity @e[tag=tal.array.double_to_array.2,distance=..0.00000001] run function t_algorithm_lib:array/double_to_array/loop/decimal/end
execute if score #tal.array.double_to_array.is_more tal.input matches 1 if score #tal.array.double_to_array.total tal.input matches 1.. unless entity @e[tag=tal.array.double_to_array.2,distance=..0.00000001] run function t_algorithm_lib:array/double_to_array/loop/decimal/tp_2
##迭代自己
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.tier tal.input matches 1 if score #tal.array.double_to_array.total tal.input matches 1.. positioned ~ ~-0.01 ~ run function t_algorithm_lib:array/double_to_array/loop/decimal/add_num
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.tier tal.input matches 1 if score #tal.array.double_to_array.total tal.input matches 1.. positioned ~ ~-0.01 ~ run function t_algorithm_lib:array/double_to_array/loop/decimal/tp_1
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.tier tal.input matches 1 if score #tal.array.double_to_array.total tal.input matches 1.. positioned ~ ~0.01 ~ run function t_algorithm_lib:array/double_to_array/loop/decimal/add_num
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.tier tal.input matches 1 if score #tal.array.double_to_array.total tal.input matches 1.. positioned ~ ~0.01 ~ run function t_algorithm_lib:array/double_to_array/loop/decimal/tp_1
