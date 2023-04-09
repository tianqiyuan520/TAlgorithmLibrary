#开始位
# summon armor_stand ~ ~ ~ {Tags:["tal.a_star.start","tal.a_star.armor_stand","tal.a_star.new","tal.a_star.new_"]}
#结束位
# summon armor_stand ~ ~ ~ {Tags:["tal.a_star.end","tal.a_star.armor_stand"]}
data modify storage t_algorithm_lib:others find_path.a_star.points.pos_list set value []
scoreboard players set #tal.a_star.limit tal.a_star.temp 0
scoreboard players set #tal.a_star.cost tal.a_star.temp 0
#计算曼哈顿距离
execute store result score #tal.a_star.point1.x tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.start] Pos[0]
execute store result score #tal.a_star.point1.z tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.start] Pos[2]
execute store result score #tal.a_star.point2.x tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[0]
execute store result score #tal.a_star.point2.z tal.a_star.temp run data get entity @e[limit=1,sort=nearest,tag=tal.a_star.end] Pos[2]
function t_algorithm_lib:others/find_path/a_star/2d/compute/start
#总代价
scoreboard players operation @e[tag=tal.a_star.start] tal.a_star.temp = #tal.a_star.distance tal.a_star.temp

execute as @e[tag=tal.a_star.armor_stand,tag=tal.a_star.start] at @s run scoreboard players set @s tal.a_star.cost 1
execute as @e[tag=tal.a_star.armor_stand,tag=tal.a_star.start] at @s run function t_algorithm_lib:others/find_path/a_star/2d/loop/loop_check