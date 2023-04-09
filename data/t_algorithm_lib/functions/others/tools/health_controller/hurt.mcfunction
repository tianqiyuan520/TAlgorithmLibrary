# effect give @s jump_boost 2 200 true
# effect give @s slowness 2 40 true
# effect give @s minecraft:blindness 2 0 true
# scoreboard players set #tal.health_controller.MaxHealth tal.input 20
#获取 应扣除血量
##判断是 minecraft:generic.max_health base get大还是max_health get大
execute store result score #tal.health_controller.MaxHealth_base tal.input run attribute @s minecraft:generic.max_health get
execute if score #tal.health_controller.MaxHealth_base tal.input > #tal.health_controller.MaxHealth tal.input run scoreboard players operation #tal.health_controller.MaxHealth tal.input = #tal.health_controller.MaxHealth_base tal.input
#
scoreboard players operation #tal.health_controller.MaxHealth tal.input -= #tal.health_controller.Health tal.input
# scoreboard players set #10 tal.input 10
# scoreboard players operation #tal.health_controller.MaxHealth tal.input /= #10 tal.input
# scoreboard players operation #tal.health_controller.Health tal.input = #tal.health_controller.MaxHealth tal.input
scoreboard players operation #tal.health_controller.MaxHealth tal.input += #tal.health_controller.Hurt tal.input


scoreboard players operation #tal.health_controller.Health tal.input = #tal.health_controller.MaxHealth tal.input
execute unless score #tal.health_controller.Health tal.input matches ..0 run function t_algorithm_lib:others/tools/health_controller/updata_health

execute unless score #tal.health_controller.Health tal.input matches ..0 run effect give @s[type=!#t_algorithm_lib:undead_mobs] minecraft:instant_health 1 4 true
execute unless score #tal.health_controller.Health tal.input matches ..0 run effect give @s[type=#t_algorithm_lib:undead_mobs] minecraft:instant_damage 1 4 true
##如果该生物为末影龙或凋零 则用药水云方式刷新血量
execute if entity @s[type=wither] run function t_algorithm_lib:others/tools/health_controller/boss
execute if entity @s[type=ender_dragon] run function t_algorithm_lib:others/tools/health_controller/boss
execute unless entity @s[type=wither] unless entity @s[type=ender_dragon] run schedule function t_algorithm_lib:others/tools/health_controller/health_return 2t append

# function t_algorithm_lib:others/tools/health_controller/health_return