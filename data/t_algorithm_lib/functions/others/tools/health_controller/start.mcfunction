#获取实体血量
tag @s remove tal.health_controller.hurtObj
tag @s add tal.health_controller.hurtObj
##伤害 1.5滴血
# scoreboard players set #tal.health_controller.Hurt tal.input 15

#
##盔甲附魔检测
# scoreboard players set #tal.health_controller.check_enchant tal.input 0
##保护与韧性
# scoreboard players set #tal.health_controller.check_armor tal.input 0
##伤害吸收
# scoreboard players set #tal.health_controller.check_AbsorptionA tal.input 0
##附魔与盔甲检测
execute if score #tal.health_controller.check_enchant tal.input matches 1 run function t_algorithm_lib:others/tools/health_controller/check_enchant
execute if score #tal.health_controller.check_armor tal.input matches 1 run function t_algorithm_lib:others/tools/health_controller/check_armor
##小数判断
scoreboard players set #10 tal.input 10
scoreboard players operation #tal.health_controller.Hurt_MOD tal.input = #tal.health_controller.Hurt tal.input 
scoreboard players operation #tal.health_controller.Hurt_MOD tal.input %= #10 tal.input
scoreboard players operation #tal.health_controller.Hurt tal.input /= #10 tal.input
##
execute store result score #tal.health_controller.MaxHealth tal.input run attribute @s minecraft:generic.max_health get
#获取实体实际血量
execute store result score #tal.health_controller.Health tal.input run data get entity @s Health
#获取实体的伤害吸收
execute store result score #tal.health_controller.AbsorptionAmount tal.input run data get entity @s AbsorptionAmount
execute if score #tal.health_controller.check_AbsorptionA tal.input matches 0 run scoreboard players set #tal.health_controller.AbsorptionAmount tal.input 0
#伤害吸收+实际血量
scoreboard players operation #tal.health_controller.TotalHealth tal.input = #tal.health_controller.Health tal.input
scoreboard players operation #tal.health_controller.TotalHealth tal.input += #tal.health_controller.AbsorptionAmount tal.input

#假如 总血量 无法抵消伤害，则清除实体
#处理末影人等无法药水杀死的
execute if score #tal.health_controller.TotalHealth tal.input <= #tal.health_controller.Hurt tal.input run tag @s[type=!player] add tal.health_controller.hurtObj.dead
# execute as @s[tag=tal.health_controller.hurtObj.dead] run data modify entity @s NoAI set value 1b
#代替kill
execute if score #tal.health_controller.TotalHealth tal.input <= #tal.health_controller.Hurt tal.input at @s[type=!#t_algorithm_lib:undead_mobs] as @p run summon area_effect_cloud ~ ~ ~ {Tags:["tal.health_controller.hurtObj.area_effect_cloud"],Radius:0.1f,Duration:6,Effects:[{Id:7,Amplifier:10,Duration:1}],Particle:underwater}
execute if score #tal.health_controller.TotalHealth tal.input <= #tal.health_controller.Hurt tal.input at @s[type=#t_algorithm_lib:undead_mobs] as @p run summon area_effect_cloud ~ ~ ~ {Tags:["tal.health_controller.hurtObj.area_effect_cloud"],Radius:0.1f,Duration:6,Effects:[{Id:6,Amplifier:10,Duration:1}],Particle:underwater}
execute if score #tal.health_controller.TotalHealth tal.input <= #tal.health_controller.Hurt tal.input if entity @s[type=ender_dragon] run particle poof ~ ~ ~ 0 0 0 0.2 1000
execute if score #tal.health_controller.TotalHealth tal.input <= #tal.health_controller.Hurt tal.input if entity @s[type=ender_dragon] run kill @s
#伤害来源
execute at @s as @e[distance=..1.5,type=area_effect_cloud,tag=tal.health_controller.hurtObj.area_effect_cloud] run data modify entity @s Owner set from storage t_algorithm_lib:others health_controller.UUID
data modify storage t_algorithm_lib:others health_controller.UUID set value []

# effect give @s jump_boost 1 0 true
# effect give @s slowness 1 40 true

#扣血
#如果有伤害吸收 则模拟吸收伤害
#伤害吸收只能抵消一部分
execute if score #tal.health_controller.check_AbsorptionA tal.input matches 1 if score #tal.health_controller.AbsorptionAmount tal.input <= #tal.health_controller.Hurt tal.input run effect clear @s absorption
execute if score #tal.health_controller.AbsorptionAmount tal.input <= #tal.health_controller.Hurt tal.input run scoreboard players operation #tal.health_controller.Hurt tal.input -= #tal.health_controller.AbsorptionAmount tal.input
#判断生物类型是否为玩家
execute if entity @s[type=player] if score #tal.health_controller.AbsorptionAmount tal.input > #tal.health_controller.Hurt tal.input at @s run function t_algorithm_lib:others/tools/health_controller/hurt2
#非玩家则 直接修改data
execute unless entity @s[type=player] if score #tal.health_controller.AbsorptionAmount tal.input > #tal.health_controller.Hurt tal.input at @s run function t_algorithm_lib:others/tools/health_controller/hurt_notplayer
# schedule function t_algorithm_lib:others/tools/health_controller/health_return 2t append

#回复
# execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Health tal.input > #tal.health_controller.Hurt tal.input run schedule function t_algorithm_lib:others/tools/health_controller/health_return 2t append
#正常扣血
execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Health tal.input > #tal.health_controller.Hurt tal.input run function t_algorithm_lib:others/tools/health_controller/hurt
tag @s remove tal.health_controller.AbsorptionAmount.end

##盔甲附魔检测
scoreboard players set #tal.health_controller.check_enchant tal.input 0
##保护与韧性
scoreboard players set #tal.health_controller.check_armor tal.input 0
##伤害吸收
scoreboard players set #tal.health_controller.check_AbsorptionA tal.input 0