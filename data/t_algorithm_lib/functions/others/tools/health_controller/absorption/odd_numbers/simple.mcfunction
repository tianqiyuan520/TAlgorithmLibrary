#4的倍数扣除
#获取等级

scoreboard players operation #tal.health_controller.Absorption_check tal.str_parser = #tal.health_controller.AbsorptionAmount tal.str_parser
scoreboard players add #tal.health_controller.Absorption_check tal.str_parser 3
scoreboard players set #TFT.4 tal.str_parser 4
scoreboard players operation #tal.health_controller.Absorption_check tal.str_parser /= #TFT.4 tal.str_parser
scoreboard players remove #tal.health_controller.Absorption_check tal.str_parser 1
# tellraw @s [{"score":{"name": "#tal.health_controller.Absorption_check","objective": "tal.str_parser"}}]
#生成 药水云
summon area_effect_cloud ~ ~ ~ {Tags:["tal.health_controller.hurtObj.area_effect_cloud_Absorption"],Radius:0.2f,Duration:10,Effects:[{Id:22,Amplifier:0,Duration:5}],Particle:underwater}

data modify entity @e[distance=..1.5,type=area_effect_cloud,tag=tal.health_controller.hurtObj.area_effect_cloud_Absorption,limit=1] Effects[{Id:22b}].Duration set from entity @s ActiveEffects[{Id:22b}].Duration
execute store result entity @e[distance=..1.5,type=area_effect_cloud,tag=tal.health_controller.hurtObj.area_effect_cloud_Absorption,limit=1] Effects[{Id:22b}].Amplifier int 1 run scoreboard players get #tal.health_controller.Absorption_check tal.str_parser

# tag @s add tal.health_controller.AbsorptionAmount.odd
# schedule function t_algorithm_lib:others/tools/health_controller/absorption/odd_numbers/-3 2s append

execute unless score #tal.health_controller.Absorption_check tal.str_parser matches 16 run summon area_effect_cloud ~ ~ ~ {Tags:["tal.health_controller.hurtObj.area_effect_cloud_Absorption"],Radius:0.2f,Duration:10,Effects:[{Id:7,Amplifier:0,Duration:1}],Particle:underwater,WaitTime:10}
tag @s add tal.health_controller.AbsorptionAmount.end
