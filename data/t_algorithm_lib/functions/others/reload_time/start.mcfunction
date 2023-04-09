###自动记录reload指令的耗时
##使用schedule检测游戏时间
execute if score #tal.reload_time tal.input matches 0 run scoreboard players set #tal.reload_time tal.input 2
execute if score #tal.reload_time tal.input matches 1 run scoreboard players set #tal.reload_time tal.input 0
execute if score #tal.reload_time tal.input matches 2 run scoreboard players set #tal.reload_time tal.input 1
execute unless score #tal.reload_time tal.input matches -2147483648..2147483647 run scoreboard players set #tal.reload_time tal.input 1
##
execute if score #tal.reload_time tal.input matches 1 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "已开启自动记录reload耗时","color":"green"}]
execute if score #tal.reload_time tal.input matches 0 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "已关闭自动记录reload耗时","color":"red"}]
execute if score #tal.reload_time tal.input matches 1 run schedule function t_algorithm_lib:others/reload_time/tick 1t replace