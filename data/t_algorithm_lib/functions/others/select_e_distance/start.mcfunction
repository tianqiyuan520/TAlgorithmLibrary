###通过自定义距离查找实体（球体范围）

##[自定义输入] 半径[0,214]
# data modify storage t_algorithm_lib:others select_e_distance.input set value 0.0
function t_algorithm_lib:others/select_e_distance/init
##r^2
execute store result score #tal.select_e_distance.r tal.input run data get storage t_algorithm_lib:others select_e_distance.input 1000
scoreboard players operation #tal.select_e_distance.r tal.input *= #tal.select_e_distance.r tal.input

scoreboard players set #tal.select_e_distance.check_time tal.input 0

execute as 00000000-0000-1d63-0000-000900000003 at @s store result score #tal.select_e_distance.pos_x tal.input run data get entity @s Pos[0] 1000
execute as 00000000-0000-1d63-0000-000900000003 at @s store result score #tal.select_e_distance.pos_y tal.input run data get entity @s Pos[1] 1000
execute as 00000000-0000-1d63-0000-000900000003 at @s store result score #tal.select_e_distance.pos_z tal.input run data get entity @s Pos[2] 1000

execute as @e[distance=..214] run function t_algorithm_lib:others/select_e_distance/main
scoreboard players remove #tal.select_e_distance.check_time tal.input 1

##[返回结果] 匹配成功的实体的个数
data modify storage t_algorithm_lib:others select_e_distance.result set value 0.0
execute store result storage t_algorithm_lib:others select_e_distance.result int 1 run scoreboard players get #tal.select_e_distance.check_time tal.input
