execute if score #tal.version tal.str_parser matches -2147483648..2147483647 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.str_parser"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text":"T算法库重载完成","color": "gold"}]
execute unless score #tal.version tal.str_parser matches -2147483648..2147483647 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Version: "},{"text":"NULL","color":"red"},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text":"T算法库重载完成","color": "gold"}]
scoreboard objectives add tal.str_parser dummy {"text": "[T算法库]通用计分板","color": "green"}
##A*算法
scoreboard objectives add tal.a_star.temp dummy {"text": "[T算法库-A*算法]通用计分板","color": "green"}
scoreboard objectives add tal.a_star.cost dummy {"text": "[T算法库-A*算法]代价计分板","color": "green"}
scoreboard objectives add tal.a_star.d dummy {"text": "[T算法库-A*算法]距离计分板","color": "green"}
##常加载区
forceload add -30000000 2022228
forceload add -30000000 2022240
forceload add -30000000 2022221
