#判断是否为4的倍数
scoreboard players operation #tal.health_controller.Absorption_check tal.input = #tal.health_controller.AbsorptionAmount tal.input
scoreboard players set #TFT.4 tal.input 4
scoreboard players operation #tal.health_controller.Absorption_check tal.input %= #TFT.4 tal.input

execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Absorption_check tal.input matches 0 run function t_algorithm_lib:others/tools/health_controller/absorption/simple
#并非4的倍数
execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Absorption_check tal.input matches 1.. run function t_algorithm_lib:others/tools/health_controller/absorption/multiple