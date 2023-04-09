#余数
execute if score #tal.health_controller.Hurt_MOD tal.input matches 1 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.1 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 2 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.2 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 3 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.3 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 4 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.4 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 5 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.5 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 6 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.6 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 7 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.7 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 8 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.8 add
execute if score #tal.health_controller.Hurt_MOD tal.input matches 9 run attribute @s minecraft:generic.max_health modifier add 0-f-0f1-f-2f "CustomReduceHealth" -0.9 add
function t_algorithm_lib:others/tools/health_controller/updata_health2