

##判断该实体 nbt 是否 满足
scoreboard players set #tal.select_e_tags.num3 tal.input 0

execute store result score #tal.select_e_tags.num4 tal.input run data modify storage t_algorithm_lib:others select_e_tags.list set from storage t_algorithm_lib:others select_e_tags.input
execute if data storage t_algorithm_lib:others select_e_tags.list[0] run function t_algorithm_lib:others/select_e_tags/loop

execute if score #tal.select_e_tags.num3 tal.input = #tal.select_e_tags.num4 tal.input run scoreboard players add #tal.select_e_tags.check_time tal.input 1
