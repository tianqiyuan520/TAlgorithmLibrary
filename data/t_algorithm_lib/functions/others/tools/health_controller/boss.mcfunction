execute store result score #tal.health_controller.Health tal.input run data get entity @s Health
scoreboard players operation #tal.health_controller.Health tal.input -= #tal.health_controller.Hurt tal.input
execute store result entity @s Health float 1 run scoreboard players get #tal.health_controller.Health tal.input