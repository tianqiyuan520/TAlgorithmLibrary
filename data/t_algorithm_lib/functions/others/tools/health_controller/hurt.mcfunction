# effect give @s jump_boost 2 200 true
# effect give @s slowness 2 40 true
# effect give @s minecraft:blindness 2 0 true
# scoreboard players set #tal.health_controller.MaxHealth tal.str_parser 20
#获取 应扣除血量
##判断是 minecraft:generic.max_health base get大还是max_health get大
execute store result score #tal.health_controller.MaxHealth_base tal.str_parser run attribute @s minecraft:generic.max_health get
execute if score #tal.health_controller.MaxHealth_base tal.str_parser > #tal.health_controller.MaxHealth tal.str_parser run scoreboard players operation #tal.health_controller.MaxHealth tal.str_parser = #tal.health_controller.MaxHealth_base tal.str_parser
#
scoreboard players operation #tal.health_controller.MaxHealth tal.str_parser -= #tal.health_controller.Health tal.str_parser
# scoreboard players set #10 tal.str_parser 10
# scoreboard players operation #tal.health_controller.MaxHealth tal.str_parser /= #10 tal.str_parser
# scoreboard players operation #tal.health_controller.Health tal.str_parser = #tal.health_controller.MaxHealth tal.str_parser
scoreboard players operation #tal.health_controller.MaxHealth tal.str_parser += #tal.health_controller.Hurt tal.str_parser


scoreboard players operation #tal.health_controller.Health tal.str_parser = #tal.health_controller.MaxHealth tal.str_parser
execute unless score #tal.health_controller.Health tal.str_parser matches ..0 run function t_algorithm_lib:others/tools/health_controller/updata_health

execute unless score #tal.health_controller.Health tal.str_parser matches ..0 run effect give @s[type=!#t_algorithm_lib:undead_mobs] minecraft:instant_health 1 4 true
execute unless score #tal.health_controller.Health tal.str_parser matches ..0 run effect give @s[type=#t_algorithm_lib:undead_mobs] minecraft:instant_damage 1 4 true
##如果该生物为末影龙或凋零 则用药水云方式刷新血量
execute if entity @s[type=wither] run function t_algorithm_lib:others/tools/health_controller/boss
execute if entity @s[type=ender_dragon] run function t_algorithm_lib:others/tools/health_controller/boss
execute unless entity @s[type=wither] unless entity @s[type=ender_dragon] run schedule function t_algorithm_lib:others/tools/health_controller/health_return 2t append

# function t_algorithm_lib:others/tools/health_controller/health_return