execute store result score #tal.array.dedup.entity_tags tal.str_parser run data get entity @s Tags
data modify block ~ ~ ~ Text2 set value '[{"nbt":"dedup.list2[0]","storage":"t_algorithm_lib:array"}]'
data modify entity @s Tags append from block ~ ~ ~ Text2
execute store result score #tal.array.dedup.entity_tags_ tal.str_parser run data get entity @s Tags
execute unless score #tal.array.dedup.entity_tags_ tal.str_parser = #tal.array.dedup.entity_tags tal.str_parser run scoreboard players set #tal.array.dedup.no_contain tal.str_parser 1
execute if score #tal.array.dedup.entity_tags_ tal.str_parser = #tal.array.dedup.entity_tags tal.str_parser run scoreboard players set #tal.array.dedup.no_contain_f tal.str_parser 1
