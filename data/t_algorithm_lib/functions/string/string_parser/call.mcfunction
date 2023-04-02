#判断是否有进行中的程序
execute if score #tal.str_p.char.stop tal.input matches 0 run tellraw @s ["",{"text":"拆解程序正在运行,请稍后再使用","color":"gold"}]
#关闭 "添加"模式
scoreboard players set #tal.str_p.char.mode tal.input 0

execute unless score #tal.sign_version tal.input matches 2.. run execute if score #tal.str_p.char.stop tal.input matches 1 run schedule function t_algorithm_lib:string/string_parser/start 1t append

execute if score #tal.sign_version tal.input matches 2 run function t_algorithm_lib:string/string_parser/new_mode