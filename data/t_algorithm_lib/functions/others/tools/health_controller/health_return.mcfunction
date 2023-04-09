# effect clear @e[tag=tal.health_controller.hurtObj,limit=1,nbt={DeathTime:0s},type=!#t_algorithm_lib:undead_mobs] minecraft:instant_health
# effect clear @e[tag=tal.health_controller.hurtObj,limit=1,nbt={DeathTime:0s},type=#t_algorithm_lib:undead_mobs] minecraft:instant_damage
execute as @e[tag=tal.health_controller.hurtObj] run attribute @s minecraft:generic.max_health modifier remove 0-f-0f1-f-1f 
execute as @e[tag=tal.health_controller.hurtObj] run attribute @s minecraft:generic.max_health modifier remove 0-f-0f1-f-2f
tag @e[tag=tal.health_controller.hurtObj] remove tal.health_controller.hurtObj
execute as @e[tag=tal.health_controller.hurtObj.dead] at @s unless entity @e[type=area_effect_cloud,distance=..3,tag=tal.health_controller.hurtObj.area_effect_cloud] run function t_algorithm_lib:others/tools/health_controller/remove_tag
# execute as @e[tag=tal.health_controller.hurtObj.dead] at @s if entity @e[type=area_effect_cloud,distance=..2,tag=tal.health_controller.hurtObj.area_effect_cloud] run tag @s remove tal.health_controller.hurtObj.dead
execute as @e[tag=tal.health_controller.hurtObj.dead] at @s run tp @s @e[limit=1,tag=tal.health_controller.hurtObj.area_effect_cloud,sort=nearest,distance=..5]
