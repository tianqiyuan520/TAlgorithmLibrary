execute store result score #tal.select_e_tags.num1 tal.input run data modify storage t_algorithm_lib:others select_e_tags.Tags set from entity @s Tags

execute store result score #tal.select_e_tags.num2 tal.input run data modify storage t_algorithm_lib:others select_e_tags.Tags[] set from storage t_algorithm_lib:others select_e_tags.list[0]
scoreboard players operation #tal.select_e_tags.num1 tal.input -= #tal.select_e_tags.num2 tal.input
execute if score #tal.select_e_tags.num1 tal.input matches 1.. run scoreboard players add #tal.select_e_tags.num3 tal.input 1
data remove storage t_algorithm_lib:others select_e_tags.list[0]
execute if data storage t_algorithm_lib:others select_e_tags.list[0] run function t_algorithm_lib:others/select_e_tags/loop
