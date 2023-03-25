#报错
execute if score #tal.str_p.char.printable tal.str_parser matches 1 run tellraw @a[tag=tal.player] [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"拆解失败,理由:","color":"red"},{"text": "\n可能含未知字符"}]
execute at @a[tag=tal.player] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
function t_algorithm_lib:string/string_parser/string/dichotomy/end
