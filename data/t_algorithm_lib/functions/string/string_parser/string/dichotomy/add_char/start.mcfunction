#玩家自定义添加字符 
#判断是否有进行中的程序
execute if score #tal.str_p.char.stop tal.input matches 0 run tellraw @s ["",{"text":"拆解程序正在运行,请稍后再使用","color":"gold"}]

execute store result score #tal.str_p.char_to_id.count tal.input run data get storage t_algorithm_lib:string_parser io.input

#若无程序 ，则开始 二分法判断位置
#开启 "添加"模式
execute if score #tal.str_p.char.stop tal.input matches 1 if score #tal.str_p.char_to_id.count tal.input matches 1 run scoreboard players set #tal.str_p.char.mode tal.input 1

execute if score #tal.str_p.char.stop tal.input matches 1 if score #tal.str_p.char_to_id.count tal.input matches 1 run data modify storage t_algorithm_lib:string_parser io.command set value '/function t_algorithm_lib:string/string_parser/string/dichotomy/add_char/add'

execute if score #tal.str_p.char.stop tal.input matches 1 if score #tal.str_p.char_to_id.count tal.input matches 1 run function t_algorithm_lib:string/string_parser/start
execute if score #tal.str_p.char_to_id.count tal.input matches 2.. run tellraw @a [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"字符添加失败.原因: ","color": "gold"},{"text": "该字符可能个数大于1","color": "red"}]
