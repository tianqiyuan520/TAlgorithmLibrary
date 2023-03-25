# #x +
# execute positioned ~1 ~ ~ if entity @e[distance=..1,tag=tal.a_star.end] run tag @s add tal.a_star.return
# #x -1
# execute positioned ~-1 ~ ~ if entity @e[distance=..1,tag=tal.a_star.end] run tag @s add tal.a_star.return
# #z +
# execute positioned ~ ~ ~1 if entity @e[distance=..1,tag=tal.a_star.end] run tag @s add tal.a_star.return
# #z -
# execute positioned ~ ~ ~-1 if entity @e[distance=..1,tag=tal.a_star.end] run tag @s add tal.a_star.return
# #y +
# execute positioned ~ ~1 ~ if entity @e[distance=..1,tag=tal.a_star.end] run tag @s add tal.a_star.return
# #y -
# execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=tal.a_star.end] run tag @s add tal.a_star.return
execute positioned ~ ~ ~ if entity @e[distance=..1.5,tag=tal.a_star.end] run tag @s add tal.a_star.return
execute as @s[tag=tal.a_star.return] at @s run playsound entity.player.levelup voice @a ~ ~ ~ 0.6 2