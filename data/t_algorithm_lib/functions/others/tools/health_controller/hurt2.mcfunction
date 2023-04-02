#扣除 伤害吸收的血量
#剩余的伤害吸收
scoreboard players operation #tal.health_controller.AbsorptionAmount tal.input -= #tal.health_controller.Hurt tal.input
#判断单复数
scoreboard players operation #tal.health_controller.Absorption_check tal.input = #tal.health_controller.AbsorptionAmount tal.input
scoreboard players set #TFT.2 tal.input 2
#求余
scoreboard players operation #tal.health_controller.Absorption_check tal.input %= #TFT.2 tal.input
#如果为复数
execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Absorption_check tal.input matches 0 run function t_algorithm_lib:others/tools/health_controller/absorption/if_multiple
#如果为单数
execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Absorption_check tal.input matches 1.. run function t_algorithm_lib:others/tools/health_controller/absorption/odd_numbers
effect clear @s absorption

#生成 药水云
# summon area_effect_cloud ~ ~ ~ {Tags:["tal.health_controller.hurtObj.area_effect_cloud_Absorption"],Radius:0.1f,Duration:6,Effects:[{Id:7,Amplifier:0,Duration:5},{Id:22,Amplifier:0,Duration:5}],Particle:underwater}
# execute at @s as @e[distance=..1.5,type=area_effect_cloud,tag=tal.health_controller.hurtObj.area_effect_cloud_Absorption] run data modify entity @s Effects[{Id:22}].Duration set from entity @s ActiveEffects[{Id:22}].Duration