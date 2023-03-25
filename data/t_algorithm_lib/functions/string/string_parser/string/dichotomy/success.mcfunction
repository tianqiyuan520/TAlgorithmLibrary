execute if score #tal.str_p.char.printable tal.str_parser matches 1 run tellraw @a[tag=tal.player] [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"拆解完成","color":"green"}]
data modify storage t_algorithm_lib:string_parser io.output set from storage t_algorithm_lib:string_parser char.check
#data remove storage t_algorithm_lib:string_parser char.true_char[0]
execute at @a[tag=tal.player] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2

#data remove storage t_algorithm_lib:string_parser io.output[0]

function t_algorithm_lib:string/string_parser/string/dichotomy/end