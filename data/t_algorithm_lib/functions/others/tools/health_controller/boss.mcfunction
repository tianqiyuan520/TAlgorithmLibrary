execute store result score #tal.health_controller.Health tal.str_parser run data get entity @s Health
scoreboard players operation #tal.health_controller.Health tal.str_parser -= #tal.health_controller.Hurt tal.str_parser
execute store result entity @s Health float 1 run scoreboard players get #tal.health_controller.Health tal.str_parser