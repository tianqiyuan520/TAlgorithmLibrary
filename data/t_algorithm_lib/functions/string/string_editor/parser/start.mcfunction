###解析器 (切片处理)
##输入string 解析成 list
#e.g. "abc" -> ["a","b","c"]

##[自定义输入] 输入的参数
#data modify storage t_algorithm_lib:string string_editor.parser.io.input set value ''
##[自定义输入] 字符串解析间隔 (默认为1) 每隔i-1字符
#即每1个字符解析 "abc" -> ["a","b","c"]
#2为 "abcdef" ["a","c","e"]
# scoreboard players set #tal.str.strEDIT.parser.str_interval tal.input 1
#取正
scoreboard players set #-1 tal.input -1
execute if score #tal.str.strEDIT.parser.str_interval tal.input matches ..-1 run scoreboard players operation #tal.str.strEDIT.parser.str_interval tal.input *= #-1 tal.input

##字符串长度
scoreboard players set #tal.str.strEDIT.parser.str_len tal.input 0
execute store result score #tal.str.strEDIT.parser.str_len tal.input run data get storage t_algorithm_lib:string string_editor.parser.io.input

##字符串初始指针 (默认首指针为0,末指针为 65536) 解析为 [首,末)  类似切片处理
##[自定义输入] 首指针 仅为0或正整数
# scoreboard players set #tal.str.strEDIT.parser.index_1 tal.input 0
##[自定义输入] 末指针
# scoreboard players set #tal.str.strEDIT.parser.index_2 tal.input 65536
# execute store result score #tal.str.strEDIT.parser.index_2 tal.input run data get storage t_algorithm_lib:string string_editor.parser.io.input
##返回的结果 list类型
data modify storage t_algorithm_lib:string string_editor.parser.return set value []
#
scoreboard players operation #tal.str.strEDIT.parser.index_2_ tal.input = #tal.str.strEDIT.parser.index_2 tal.input
scoreboard players operation #tal.str.strEDIT.parser.index_2_ tal.input *= #-1 tal.input
#
#首指针 正
execute if score #tal.str.strEDIT.parser.index_1 tal.input matches ..-1 run scoreboard players operation #tal.str.strEDIT.parser.index_1 tal.input *= #-1 tal.input
#
scoreboard players set #tal.str.strEDIT.parser.wrong tal.input 0
##越界判断
execute if score #tal.str.strEDIT.parser.index_1 tal.input >= #tal.str.strEDIT.parser.str_len tal.input run scoreboard players set #tal.str.strEDIT.parser.wrong tal.input 1
execute if score #tal.str.strEDIT.parser.index_2_ tal.input > #tal.str.strEDIT.parser.str_len tal.input run scoreboard players set #tal.str.strEDIT.parser.wrong tal.input 2
execute if score #tal.str.strEDIT.parser.index_2_ tal.input > #tal.str.strEDIT.parser.index_1 tal.input run scoreboard players set #tal.str.strEDIT.parser.wrong tal.input 3
##异常处理
execute if score #tal.str.strEDIT.parser.wrong tal.input matches 1 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "字符串解析失败","color":"#A7A7A7"},{"text":"\n原因:首指针越界","color":"#FB5454"}]
execute if score #tal.str.strEDIT.parser.wrong tal.input matches 2 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "字符串解析失败","color":"#A7A7A7"},{"text":"\n原因:末指针越界","color":"#FB5454"}]
execute if score #tal.str.strEDIT.parser.wrong tal.input matches 3 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "字符串解析失败","color":"#A7A7A7"},{"text":"\n原因:|末指针|>|首指针|","color":"#FB5454"}]

#将末指针转化为 正数的指针
execute if score #tal.str.strEDIT.parser.index_2 tal.input matches ..-1 run function t_algorithm_lib:string/string_editor/parser/change


execute if score #tal.str.strEDIT.parser.index_1 tal.input = #tal.str.strEDIT.parser.index_2 tal.input run data modify storage t_algorithm_lib:string/string_editor/parser return set value [""]

execute unless score #tal.str.strEDIT.parser.index_1 tal.input = #tal.str.strEDIT.parser.index_2 tal.input if score #tal.str.strEDIT.parser.wrong tal.input matches 0 run function t_algorithm_lib:string/string_editor/parser/main/start

##初始化
execute unless data storage t_algorithm_lib:string string_editor.parser.io.input run data modify storage t_algorithm_lib:string string_editor.parser.io.input set value 'abc'
#首指针 仅为0或正整数
execute unless score #tal.str.strEDIT.parser.index_1 tal.input matches -2147483648..2147483647 run scoreboard players set #tal.str.strEDIT.parser.index_1 tal.input 0
#末指针
execute unless score #tal.str.strEDIT.parser.index_2 tal.input matches -2147483648..2147483647 run scoreboard players set #tal.str.strEDIT.parser.index_2 tal.input 65536
##字符串解析间隔 (默认为1)
#即每1个字符解析 "abc" -> ["a","b","c"]
execute unless score #tal.str.strEDIT.parser.str_interval tal.input matches -2147483648..2147483647 run scoreboard players set #tal.str.strEDIT.parser.str_interval tal.input 1