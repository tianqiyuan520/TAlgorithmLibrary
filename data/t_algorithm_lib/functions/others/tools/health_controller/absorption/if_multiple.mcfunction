#判断是否为4的倍数
scoreboard players operation #tal.health_controller.Absorption_check tal.str_parser = #tal.health_controller.AbsorptionAmount tal.str_parser
scoreboard players set #TFT.4 tal.str_parser 4
scoreboard players operation #tal.health_controller.Absorption_check tal.str_parser %= #TFT.4 tal.str_parser

execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Absorption_check tal.str_parser matches 0 run function t_algorithm_lib:others/tools/health_controller/absorption/simple
#并非4的倍数
execute if entity @s[tag=!tal.health_controller.AbsorptionAmount.end] if score #tal.health_controller.Absorption_check tal.str_parser matches 1.. run function t_algorithm_lib:others/tools/health_controller/absorption/multiple