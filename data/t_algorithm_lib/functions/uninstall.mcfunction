###卸载本数据包
tellraw @a [{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text":"T算法库卸载中……","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "感谢您的支持Thanks♪(･ω･)ﾉ"}]}}]
scoreboard objectives remove tal.str_parse
##A*算法
scoreboard objectives remove tal.a_star.temp
scoreboard objectives remove tal.a_star.cost
scoreboard objectives remove tal.a_star.d
##常加载区
forceload remove -30000000 2022228
forceload remove -30000000 2022240

datapack disable "file/TAlgorithmLibrary"
tellraw @a [{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8"},{"text":"T算法库卸载完成","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "感谢您的支持Thanks♪(･ω･)ﾉ"}]}}]

# setblock -29999995 4 2022222 minecraft:command_block[facing=up]{Command:'/datapack disable "file/TAlgorithmLibrary"',auto:1b}
# setblock -29999995 5 2022222 minecraft:chain_command_block[facing=up]{Command:"/reload",auto:1b}
# setblock -29999995 6 2022222 minecraft:chain_command_block[facing=up]{Command:'/tellraw @a [{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8"},{"text":"T算法库卸载完成","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "感谢您的支持Thanks♪(･ω･)ﾉ"}]}}]',auto:1b}
