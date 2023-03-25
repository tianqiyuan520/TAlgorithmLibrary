##若检测到 给予高亮
# execute as @e[tag=get_entity_hurt_player.entity] run effect give @s glowing 1 10 false

##检测
execute as @e[tag=get_entity_hurt_player.entity] run tag @s remove get_entity_hurt_player.entity

execute as @e[type=#t_algorithm_lib:attack_mobs] at @s unless entity @p[distance=..10] run function t_algorithm_lib:others/tools/get_entity_hurt_player/remove_uuid

execute as @e[type=#t_algorithm_lib:attack_mobs,tag=!get_entity_hurt_player.checked,predicate=t_algorithm_lib:entity_look_at_player] at @s if entity @p[distance=..10] run function t_algorithm_lib:others/tools/get_entity_hurt_player/add_uuid

##自动运行
# schedule function t_algorithm_lib:others/tools/get_entity_hurt_player/tick 2t replace