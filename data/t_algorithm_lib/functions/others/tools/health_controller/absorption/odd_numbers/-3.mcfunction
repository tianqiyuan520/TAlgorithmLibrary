execute at @a[tag=tal.health_controller.AbsorptionAmount.odd] run summon area_effect_cloud ~ ~ ~ {Tags:["tal.health_controller.hurtObj.area_effect_cloud_Absorption"],Radius:0.2f,Duration:10,Effects:[{Id:7,Amplifier:0,Duration:20}],Particle:underwater,WaitTime:9}

tag @a[tag=tal.health_controller.AbsorptionAmount.odd] remove tal.health_controller.AbsorptionAmount.odd
