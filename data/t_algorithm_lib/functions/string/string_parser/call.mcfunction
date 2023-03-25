#判断是否有进行中的程序
execute if score #tal.str_p.char.stop tal.str_parser matches 0 run tellraw @s ["",{"text":"拆解程序正在运行,请稍后再使用","color":"gold"}]
#关闭 "添加"模式
scoreboard players set #tal.str_p.char.mode tal.str_parser 0
execute if score #tal.str_p.char.stop tal.str_parser matches 1 run function t_algorithm_lib:string/string_parser/start
#debug start