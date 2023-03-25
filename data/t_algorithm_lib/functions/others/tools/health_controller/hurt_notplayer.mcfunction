#扣除 伤害吸收的血量
#剩余的伤害吸收
scoreboard players operation #tal.health_controller.AbsorptionAmount tal.str_parser -= #tal.health_controller.Hurt tal.str_parser
#直接修改data
execute store result entity @s AbsorptionAmount float 1 run scoreboard players get #tal.health_controller.AbsorptionAmount tal.str_parser