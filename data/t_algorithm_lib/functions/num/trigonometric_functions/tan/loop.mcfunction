execute positioned -30000000 -1000 2022239 run kill @e[type=armor_stand,tag=tal.num.temp.entity1,dy=1000000000]
execute positioned -30000000 -1000 2022239 run kill @e[type=armor_stand,tag=tal.num.temp.entity1,dy=1000000000]
# execute store result score #tal.num.temp.x tal.input run data get storage t_algorithm_lib:num temp.x 10000
execute store result score #tal.num.temp.x tal.input run data get storage t_algorithm_lib:num temp.x 10000
summon armor_stand ~ ~ ~ {Tags:["tal.num.temp.entity1"],NoGravity:1b}
data modify entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1] Pos[1] set from storage t_algorithm_lib:num temp.x

execute if entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1,dy=1000000000] unless entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1,distance=..0.000001] positioned -30000000 3 2022239 run function t_algorithm_lib:num/trigonometric_functions/tan/big

execute positioned -30000000 -1000 2022239 run kill @e[type=armor_stand,tag=tal.num.temp.entity1,dy=1000000000]

execute store result score #tal.num.temp.x tal.input run data get storage t_algorithm_lib:num temp.x 10000
summon armor_stand ~ ~ ~ {Tags:["tal.num.temp.entity1"],NoGravity:1b}
data modify entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1] Pos[1] set from storage t_algorithm_lib:num temp.x
execute if entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1,dy=-1000] run function t_algorithm_lib:num/trigonometric_functions/tan/get_num
scoreboard players add #tal.num.temp.num3 tal.input 1

execute if score #tal.num.temp.num3 tal.input matches ..500000000 if entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1,dy=100000000000] unless entity @e[limit=1,type=armor_stand,tag=tal.num.temp.entity1,distance=..0.000001] positioned -30000000 6.2831852 2022239 run function t_algorithm_lib:num/trigonometric_functions/tan/loop

execute positioned -30000000 -1000 2022239 run kill @e[type=armor_stand,tag=tal.num.temp.entity1,dy=1000000000]