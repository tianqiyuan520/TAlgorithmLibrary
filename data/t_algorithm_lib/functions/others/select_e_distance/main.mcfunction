

##判断该实体 x^2 + y^2 + z^2 <= r^2
execute store result score #tal.select_e_distance.x tal.input run data get entity @s Pos[0] 1000
scoreboard players operation #tal.select_e_distance.x tal.input -= #tal.select_e_distance.pos_x tal.input

scoreboard players operation #tal.select_e_distance.x tal.input *= #tal.select_e_distance.x tal.input
execute store result score #tal.select_e_distance.y tal.input run data get entity @s Pos[1] 1000
scoreboard players operation #tal.select_e_distance.y tal.input -= #tal.select_e_distance.pos_y tal.input


scoreboard players operation #tal.select_e_distance.y tal.input *= #tal.select_e_distance.y tal.input
execute store result score #tal.select_e_distance.z tal.input run data get entity @s Pos[2] 1000
scoreboard players operation #tal.select_e_distance.z tal.input -= #tal.select_e_distance.pos_z tal.input



scoreboard players operation #tal.select_e_distance.z tal.input *= #tal.select_e_distance.z tal.input


scoreboard players operation #tal.select_e_distance.x tal.input += #tal.select_e_distance.y tal.input
scoreboard players operation #tal.select_e_distance.x tal.input += #tal.select_e_distance.z tal.input


execute if score #tal.select_e_distance.x tal.input <= #tal.select_e_distance.r tal.input run scoreboard players add #tal.select_e_distance.check_time tal.input 1
