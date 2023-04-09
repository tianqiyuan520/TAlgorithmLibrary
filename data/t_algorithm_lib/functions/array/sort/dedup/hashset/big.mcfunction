execute store result score #tal.array.dedup.entity_tags tal.input run data get entity @s Tags

data modify storage t_algorithm_lib:array dedup.list3 set from entity @s Tags
data modify storage t_algorithm_lib:array dedup.char set from entity @s Tags[-1]
data modify block ~ ~ ~ Text2 set value '[{"nbt":"dedup.list2[0]","storage":"t_algorithm_lib:array"}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"nbt":"dedup.list2[0]","storage":"t_algorithm_lib:array"}]'
data modify entity @s Tags prepend from block ~ ~ ~ Text2
execute if score #tal.sign_version tal.input matches 2 run data modify entity @s Tags prepend from block ~ ~ ~ front_text.messages[1]
data modify storage t_algorithm_lib:array dedup.char2 set from entity @s Tags[-1]

execute store success score #tal.array.dedup.is_change tal.input run data modify storage t_algorithm_lib:array dedup.char set from storage t_algorithm_lib:array dedup.char2
execute if score #tal.array.dedup.is_change tal.input matches 0 run scoreboard players set #tal.array.dedup.no_contain_f tal.input 1

data modify entity @s Tags set from storage t_algorithm_lib:array dedup.list3
