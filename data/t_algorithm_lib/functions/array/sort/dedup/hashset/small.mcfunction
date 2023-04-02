execute store result score #tal.array.dedup.entity_tags tal.input run data get entity @s Tags
data modify block ~ ~ ~ Text2 set value '[{"nbt":"dedup.list2[0]","storage":"t_algorithm_lib:array"}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"nbt":"dedup.list2[0]","storage":"t_algorithm_lib:array"}]'
data modify entity @s Tags append from block ~ ~ ~ Text2
execute if score #tal.sign_version tal.input matches 2 run data modify entity @s Tags append from block ~ ~ ~ front_text.messages[1]
execute store result score #tal.array.dedup.entity_tags_ tal.input run data get entity @s Tags
execute unless score #tal.array.dedup.entity_tags_ tal.input = #tal.array.dedup.entity_tags tal.input run scoreboard players set #tal.array.dedup.no_contain tal.input 1
execute if score #tal.array.dedup.entity_tags_ tal.input = #tal.array.dedup.entity_tags tal.input run scoreboard players set #tal.array.dedup.no_contain_f tal.input 1
