#4的倍数扣除
#获取等级
scoreboard players operation #tal.health_controller.Absorption_check tal.input = #tal.health_controller.AbsorptionAmount tal.input
scoreboard players set #TFT.4 tal.input 4
scoreboard players operation #tal.health_controller.Absorption_check tal.input /= #TFT.4 tal.input
scoreboard players remove #tal.health_controller.Absorption_check tal.input 1
#生成 药水云
summon area_effect_cloud ~ ~ ~ {Tags:["tal.health_controller.hurtObj.area_effect_cloud_Absorption"],Radius:0.5f,Duration:6,Effects:[{Id:22,Amplifier:0,Duration:5}],Particle:underwater}
data modify entity @e[distance=..1.5,type=area_effect_cloud,tag=tal.health_controller.hurtObj.area_effect_cloud_Absorption,limit=1] Effects[{Id:22b}].Duration set from entity @s ActiveEffects[{Id:22b}].Duration
execute store result entity @e[distance=..1.5,type=area_effect_cloud,tag=tal.health_controller.hurtObj.area_effect_cloud_Absorption,limit=1] Effects[{Id:22b}].Amplifier int 1 run scoreboard players get #tal.health_controller.Absorption_check tal.input

tag @s add tal.health_controller.AbsorptionAmount.end
