#读取该节点的代价
scoreboard players operation #tal.a_star.cost tal.a_star.temp = @s tal.a_star.cost

#计算曼哈顿距离
execute store result score #tal.a_star.point1.x tal.a_star.temp run data get entity @s Pos[0]
execute store result score #tal.a_star.point1.y tal.a_star.temp run data get entity @s Pos[1]
execute store result score #tal.a_star.point1.z tal.a_star.temp run data get entity @s Pos[2]
execute store result score #tal.a_star.point2.x tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[0]
execute store result score #tal.a_star.point2.y tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[1]
execute store result score #tal.a_star.point2.z tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[2]
function t_algorithm_lib:others/find_path/a_star/2d/compute/start
#总代价
scoreboard players operation @s tal.a_star.temp = #tal.a_star.distance tal.a_star.temp
scoreboard players operation @s tal.a_star.temp += @s tal.a_star.cost
execute positioned -29999998 0 2022241 run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["tal.a_star.a"]}

execute positioned -29999998 0 2022241 store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=tal.a_star.a,distance=..0.1] Pos[1] double 1.0 run scoreboard players get @s tal.a_star.temp
# execute positioned -29999998 0 2022241 run kill @e[type=armor_stand,distance=..2]
# execute positioned -29999998 0 2022241 as @e[type=armor_stand,limit=1,sort=nearest] run tellraw @p [{"nbt":"Pos[1]","entity": "@s"}]
# execute positioned -29999998 0 2022241 run tellraw @p [{"score":{"name":"@s","objective": "tal.a_star.temp"}}]
# tellraw @p [{"score":{"name": "#tal.a_star.smallest","objective": "tal.a_star.temp"}}]
