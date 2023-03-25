#乘于100
# execute store result storage t_algorithm_lib:string_parser temp.char.timer int 100 run scoreboard players get #tal.str_p.char.timer tal.str_parser
# execute store result score #tal.str_p.char.timer tal.str_parser run data get storage t_algorithm_lib:string_parser temp.char.timer
# scoreboard players set #tal.str_p.num.tick tal.str_parser 20
# scoreboard players operation #tal.str_p.char.timer tal.str_parser /= #tal.str_p.num.tick tal.str_parser
#再读取
# execute store result storage t_algorithm_lib:string_parser temp.char.timer float 1 run scoreboard players get #tal.str_p.char.timer tal.str_parser


# tellraw @a[tag=tal.player] ["",{"text":"耗时: ","color":"gold"},{"nbt":"temp.char.timer","storage": "t_algorithm_lib:string_parser","color": "green","clickEvent": {"action": "run_command","value": "/data get storage t_algorithm_lib:string_parser temp.char.timer"}},{"text": "tick"}]

tellraw @a[tag=tal.player] ["",{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"计算次数: ","color":"gold"},{"score":{"name": "#tal.str_p.char.limlit","objective": "tal.str_parser"},"color": "green","clickEvent": {"action": "run_command","value": "/data get storage t_algorithm_lib:string_parser temp.char.timer"}}]
#scoreboard players get #tal.str_p.char.limlit 