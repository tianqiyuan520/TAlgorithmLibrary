#判断 1为改变，成功 0为成功
execute store success score #tal.str_p.IsChangeInput tal.input run data modify storage t_algorithm_lib:string_parser io.input set from storage t_algorithm_lib:string_parser io.temp.input
execute if score #tal.str_p.IsChangeInput tal.input matches 1 run execute at @a run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
execute if score #tal.str_p.char.printable tal.input matches 1 if score #tal.str_p.IsChangeInput tal.input matches 1 run tellraw @a [{"text":"拆解中,请等待,请勿修改源数据","color":"green"}]