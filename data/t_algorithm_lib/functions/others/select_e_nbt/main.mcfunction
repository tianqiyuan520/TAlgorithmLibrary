

##判断该实体 nbt 是否 满足
data modify storage t_algorithm_lib:others select_e_nbt.nbt set from entity @s
execute store result score #tal.select_e_nbt.is tal.input run data modify storage t_algorithm_lib:others select_e_nbt.nbt merge from storage t_algorithm_lib:others select_e_nbt.input
execute if score #tal.select_e_nbt.is tal.input matches 0 run scoreboard players add #tal.select_e_nbt.check_time tal.input 1
