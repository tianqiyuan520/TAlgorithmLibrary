execute positioned ^ ^ ^3.5 run summon area_effect_cloud ~ ~ ~ {Tags:["tal.track_sharpen.entity3"],Duration:1}

execute as @e[limit=1,tag=tal.track_sharpen.entity3,sort=nearest] at @s facing entity @e[limit=1,tag=tal.track_sharpen.entity2,sort=nearest] feet positioned ^ ^ ^0.5 run summon area_effect_cloud ~ ~ ~ {Tags:["tal.track_sharpen.entity4"],Duration:1}

execute positioned ^ ^ ^3 if entity @e[tag=tal.track_sharpen.entity4,distance=..0.1] as @e[limit=1,tag=tal.track_sharpen.entity4,sort=nearest] run tp ~ ~ ~0.2
execute facing entity @e[limit=1,tag=tal.track_sharpen.entity4,sort=nearest] feet run tp ~ ~ ~

execute as @e[limit=1,tag=tal.track_sharpen.entity3,sort=nearest] run kill @s
execute as @e[limit=1,tag=tal.track_sharpen.entity4,sort=nearest] run kill @s