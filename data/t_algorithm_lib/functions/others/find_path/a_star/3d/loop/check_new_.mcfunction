tag @s remove tal.a_star.new

tag @e remove tal.a_star.new_
#读取该节点的代价
scoreboard players operation #tal.a_star.cost tal.a_star.temp = @s tal.a_star.cost
scoreboard players add @s tal.a_star.cost 1

scoreboard players add #tal.a_star.limit tal.a_star.temp 1

#计算曼哈顿距离
execute store result score #tal.a_star.point1.x tal.a_star.temp run data get entity @s Pos[0]
execute store result score #tal.a_star.point1.y tal.a_star.temp run data get entity @s Pos[1]
execute store result score #tal.a_star.point1.z tal.a_star.temp run data get entity @s Pos[2]
execute store result score #tal.a_star.point2.x tal.a_star.temp run data get entity @e[limit=1,tag=tal.a_star.end] Pos[0]
execute store result score #tal.a_star.point2.y tal.a_star.temp run data get entity @e[limit=1,tag=tal.a_star.end] Pos[1]
execute store result score #tal.a_star.point2.z tal.a_star.temp run data get entity @e[limit=1,tag=tal.a_star.end] Pos[2]
function t_algorithm_lib:others/find_path/a_star/3d/compute/start
#总代价
scoreboard players operation @s tal.a_star.temp = #tal.a_star.distance tal.a_star.temp
scoreboard players operation @s tal.a_star.temp += #tal.a_star.cost tal.a_star.temp

##获取预估代价
#x +
execute positioned ~1 ~ ~ if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/x/x1
#x -1
execute positioned ~-1 ~ ~ if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/x/x2
#z +
execute positioned ~ ~ ~1 if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/z/z1
#z -
execute positioned ~ ~ ~-1 if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/z/z2

#y +
execute positioned ~ ~1 ~ if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/y/y1
#y -
execute positioned ~ ~-1 ~ if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/y/y2

# x and z

execute positioned ~1 ~ ~1 if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/x_and_z/1
#2
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/x_and_z/2
#3
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/x_and_z/3
#4
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #t_algorithm_lib:air unless entity @e[distance=..0.4,tag=tal.a_star.armor_stand] run function t_algorithm_lib:others/find_path/a_star/3d/loop/x_and_z/4
##取代价最小的
scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H1 tal.a_star.temp

execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H2 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H2 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H3 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H3 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H4 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H4 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H5 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H5 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H6 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H6 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H7 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H7 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H8 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H8 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H9 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H9 tal.a_star.temp
execute if score #tal.a_star.H_all tal.a_star.temp > #tal.a_star.H10 tal.a_star.temp run scoreboard players operation #tal.a_star.H_all tal.a_star.temp = #tal.a_star.H10 tal.a_star.temp
function t_algorithm_lib:others/find_path/a_star/3d/loop/sumon
# tellraw @p [{"score":{"name": "#tal.a_star.H_all","objective": "tal.a_star.temp"}}]
#判断是否找到
function t_algorithm_lib:others/find_path/a_star/3d/loop/end
#溯回

execute as @s[tag=tal.a_star.return] at @s run function t_algorithm_lib:others/find_path/a_star/3d/loop/return/loop
execute unless entity @e[tag=tal.a_star.return] run function t_algorithm_lib:others/find_path/a_star/3d/select_nearest_one

# execute if score #tal.a_star.limit tal.a_star.temp matches ..100 as @e[tag=tal.a_star.new,limit=1] unless entity @e[tag=tal.a_star.return] at @s run function t_algorithm_lib:others/find_path/a_star/3d/loop/loop_check
execute unless entity @e[tag=tal.a_star.return] if score #tal.a_star.limit tal.a_star.temp matches ..500 as @e[tag=tal.a_star.new] if score @s tal.a_star.temp = #tal.a_star.smallest tal.a_star.temp as @s at @s run function t_algorithm_lib:others/find_path/a_star/3d/loop/check_one
# execute unless entity @e[tag=tal.a_star.return] if score #tal.a_star.limit tal.a_star.temp matches ..500 as @e[tag=tal.a_star.new] if score @s tal.a_star.temp = #tal.a_star.smallest tal.a_star.temp at @s run function t_algorithm_lib:others/find_path/a_star/3d/loop/loop_check
# tag @e[tag=tal.a_star.new] add tal.a_star.new_

# execute unless entity @e[tag=tal.a_star.return] if score #tal.a_star.limit tal.a_star.temp matches ..500 as @e[tag=tal.a_star.new] run function t_algorithm_lib:others/find_path/a_star/3d/loop/d
# execute unless entity @e[tag=tal.a_star.return] if score #tal.a_star.limit tal.a_star.temp matches ..500 run schedule function t_algorithm_lib:others/find_path/a_star/3d/loop/d 1s append
# execute if score #tal.a_star.limit tal.a_star.temp matches ..200 as @e[tag=tal.a_star.new,limit=1] unless entity @e[tag=tal.a_star.return] at @s run function t_algorithm_lib:others/find_path/a_star/3d/loop/loop_check