execute store result score #tal.num.temp.x tal.str_parser run data get storage t_algorithm_lib:num temp.x 10000
summon armor_stand ~ ~ ~ {Tags:["tal.num.temp.entity1"],Invisible:1b}
data modify entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1] Pos[1] set from storage t_algorithm_lib:num temp.x
execute as @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1] at @s run tp ~ ~-6.2831852 ~
data modify storage t_algorithm_lib:num temp.x set from entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1] Pos[1]
execute positioned -30000000 -1000 2022239 run kill @e[type=armor_stand,tag=tal.num.temp.entity1,dy=1000000000]

execute store result score #tal.num.temp.x tal.str_parser run data get storage t_algorithm_lib:num temp.x 100000
execute if score #tal.num.temp.x tal.str_parser matches 314159261.. run function t_algorithm_lib:num/trigonometric_functions/tan/is_large
# scoreboard players operation #tal.num.temp.x tal.str_parser -= #tal.num.temp.2pi tal.str_parser

# execute store result storage t_algorithm_lib:num temp.x double 0.0001 run scoreboard players get #tal.num.temp.x tal.str_parser
