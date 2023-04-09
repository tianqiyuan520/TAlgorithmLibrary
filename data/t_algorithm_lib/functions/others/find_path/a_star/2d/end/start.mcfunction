data modify storage t_algorithm_lib:others find_path.a_star.points.pos_list append from entity @e[tag=tal.a_star.end,limit=1,sort=nearest] Pos
# data modify storage t_algorithm_lib:others find_path.a_star.points.pos_list append from entity @e[tag=tal.a_star.node.item,limit=1,sort=nearest] Pos
# data modify storage t_algorithm_lib:others find_path.a_star.points.pos_list append from entity @e[tag=tal.a_star.end,limit=1,sort=nearest] Pos


# kill @e[type=minecraft:area_effect_cloud,tag=!tal.a_star.end_back_]
# kill @e[tag=tal.a_star.armor_stand,tag=!tal.a_star.end_back_]
# kill @e[tag=tal.a_star.armor_stand]
# kill @e[tag=tal.a_star.end]
# scoreboard players set @e[tag=tal.a_star.node_,limit=1,sort=nearest] tal.a_star.temp 1
