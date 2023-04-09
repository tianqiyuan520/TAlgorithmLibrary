execute unless entity @s[tag=have] positioned ~1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H1 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H1 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H1 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~ ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H3 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~ ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H3 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~ ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H3 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~-1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H2 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~-1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H2 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~-1 ~ ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H2 tal.a_star.temp run tag @s add have



execute unless entity @s[tag=have] positioned ~ ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H4 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~ ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H4 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~ ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H4 tal.a_star.temp run tag @s add have


execute unless entity @s[tag=have] positioned ~ ~1 ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H5 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~ ~1 ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H5 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~ ~1 ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H5 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~ ~-1 ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H6 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~ ~-1 ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H6 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~ ~-1 ~ if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H6 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~1 ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H7 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~1 ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H7 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~1 ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H7 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~1 ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H8 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~1 ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H8 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~1 ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H8 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~-1 ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H9 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~-1 ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H9 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~-1 ~ ~1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H9 tal.a_star.temp run tag @s add have

execute unless entity @s[tag=have] positioned ~-1 ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H10 tal.a_star.temp run summon area_effect_cloud ~ ~ ~ {Tags:["tal.a_star.armor_stand","tal.a_star.new"],NoGravity:1b,Duration:2000}
execute unless entity @s[tag=have] positioned ~-1 ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H10 tal.a_star.temp run scoreboard players operation @e[limit=1,sort=nearest,tag=tal.a_star.new,distance=..0.1] tal.a_star.cost = @s tal.a_star.cost
execute unless entity @s[tag=have] positioned ~-1 ~ ~-1 if score #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H10 tal.a_star.temp run tag @s add have