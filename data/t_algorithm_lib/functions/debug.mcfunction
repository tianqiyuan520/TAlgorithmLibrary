###debug模式
##用来调试算法，输出算法的信息
#开启
execute if score #tal.debug tal.input matches 0 run scoreboard players set #tal.debug tal.input 2
#关闭
execute if score #tal.debug tal.input matches 1 run scoreboard players set #tal.debug tal.input 0

execute if score #tal.debug tal.input matches 2 run scoreboard players set #tal.debug tal.input 1


execute unless score #tal.debug tal.input matches -2147483648..2147483647 run scoreboard players set #tal.debug tal.input 1



execute if score #tal.debug tal.input matches 1 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "已开启debug模式","color":"green"}]
execute if score #tal.debug tal.input matches 0 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "已关闭debug模式","color":"red"}]