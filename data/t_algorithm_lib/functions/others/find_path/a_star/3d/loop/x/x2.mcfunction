# summon armor_stand ~ ~ ~ {Tags:["tal.a_star.armor_stand"]}
#计算曼哈顿距离
execute store result score #tal.a_star.point1.x tal.a_star.temp run data get entity @s Pos[0]
scoreboard players remove #tal.a_star.point1.x tal.a_star.temp 1
execute store result score #tal.a_star.point1.y tal.a_star.temp run data get entity @s Pos[1]
execute store result score #tal.a_star.point1.z tal.a_star.temp run data get entity @s Pos[2]
execute store result score #tal.a_star.point2.x tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[0]
execute store result score #tal.a_star.point2.y tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[1]
execute store result score #tal.a_star.point2.z tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[2]
function t_algorithm_lib:others/find_path/a_star/3d/compute/start
#总代价
scoreboard players operation #tal.a_star.H2 tal.a_star.temp = #tal.a_star.distance tal.a_star.temp
# scoreboard players operation @s tal.a_star.d = #tal.a_star.distance tal.a_star.temp

# scoreboard players add #tal.a_star.H2 tal.a_star.temp 1
scoreboard players operation #tal.a_star.H2 tal.a_star.temp += #tal.a_star.cost tal.a_star.temp

# kill @e[limit=1,sort=nearest,tag=tal.a_star.armor_stand,distance=..0.1]