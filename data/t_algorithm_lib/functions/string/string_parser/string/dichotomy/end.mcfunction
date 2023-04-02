setblock -30000000 2 2022231 air
execute at @a[tag=tal.player] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
execute if data storage t_algorithm_lib:string_parser io.command positioned -30000000 2 2022233 run setblock ~ ~ ~ command_block[facing=up]{auto:1b} destroy
execute if data storage t_algorithm_lib:string_parser io.command positioned -30000000 2 2022233 run data modify block ~ ~ ~ Command set from storage t_algorithm_lib:string_parser io.command

execute if score #tal.str_p.char.printable tal.input matches 1 if score #tal.str_p.char.timer_on tal.input matches 1 run function t_algorithm_lib:string/string_parser/timer/show
scoreboard players set #tal.str_p.char.stop tal.input 1
# execute positioned -30000000 2 2022231 run data modify block ~ ~ ~ auto set value 0b
tag @a[tag=tal.player] remove tal.player
data remove storage t_algorithm_lib:string_parser io.command

