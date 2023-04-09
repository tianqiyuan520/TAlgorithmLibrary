advancement revoke @s from t_algorithm_lib:get_entity_hurt_player/all
execute as @e[distance=..10,tag=waf_UUID_62] run tag @s add waf_entity
#记录 攻击UUID
execute store result score @e[distance=..10,tag=waf_UUID_62] tal.UUID_1 run data get entity @s UUID[0]
execute store result score @e[distance=..10,tag=waf_UUID_62] tal.UUID_2 run data get entity @s UUID[1]
execute store result score @e[distance=..10,tag=waf_UUID_62] tal.UUID_3 run data get entity @s UUID[2]
execute store result score @e[distance=..10,tag=waf_UUID_62] tal.UUID_4 run data get entity @s UUID[3]