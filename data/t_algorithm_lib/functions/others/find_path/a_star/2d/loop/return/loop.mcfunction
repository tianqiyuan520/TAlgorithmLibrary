tag @e remove tal.a_star.end_back
tag @s add tal.a_star.end_back_
data modify storage t_algorithm_lib:others find_path.a_star.points.pos_list prepend from entity @s Pos


execute positioned ~1 ~ ~ if score @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] tal.a_star.cost < @s tal.a_star.cost as @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] run tag @s add tal.a_star.end_back
execute positioned ~-1 ~ ~ if score @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] tal.a_star.cost < @s tal.a_star.cost as @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] run tag @s add tal.a_star.end_back
execute positioned ~ ~ ~1 if score @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] tal.a_star.cost < @s tal.a_star.cost as @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] run tag @s add tal.a_star.end_back
execute positioned ~ ~ ~-1 if score @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] tal.a_star.cost < @s tal.a_star.cost as @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] run tag @s add tal.a_star.end_back



execute unless entity @e[tag=tal.a_star.end_back,distance=..2] at @e[distance=..2,tag=tal.a_star.armor_stand] if score @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] tal.a_star.cost < @s tal.a_star.cost as @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] run tag @s add tal.a_star.end_back
execute unless entity @e[tag=tal.a_star.end_back,distance=..10] run function t_algorithm_lib:others/find_path/a_star/2d/end/start

execute as @e[tag=tal.a_star.end_back,limit=1,sort=nearest] at @s run function t_algorithm_lib:others/find_path/a_star/2d/loop/return/loop
# execute as @e[tag=tal.a_star.end_back,limit=1,sort=nearest] at @s run schedule function t_algorithm_lib:others/find_path/a_star/2d/loop/return/start 1t replace 

# execute at @e[distance=..0.1,tag=tal.a_star.armor_stand] unless score @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] tal.a_star.cost < @s tal.a_star.cost as @e[distance=..0.1,tag=tal.a_star.armor_stand,limit=1] at @s run kill @e[tag=!t,tag=!tal.a_star.start,tag=!tal.a_star.end,type=armor_stand]