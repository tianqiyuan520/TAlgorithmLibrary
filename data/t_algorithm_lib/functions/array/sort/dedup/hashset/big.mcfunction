execute store result score #tal.array.dedup.entity_tags tal.str_parser run data get entity @s Tags

data modify storage t_algorithm_lib:array dedup.list3 set from entity @s Tags
data modify storage t_algorithm_lib:array dedup.char set from entity @s Tags[-1]
data modify block ~ ~ ~ Text2 set value '[{"nbt":"dedup.list2[0]","storage":"t_algorithm_lib:array"}]'
data modify entity @s Tags prepend from block ~ ~ ~ Text2

data modify storage t_algorithm_lib:array dedup.char2 set from entity @s Tags[-1]

execute store success score #tal.array.dedup.is_change tal.str_parser run data modify storage t_algorithm_lib:array dedup.char set from storage t_algorithm_lib:array dedup.char2
execute if score #tal.array.dedup.is_change tal.str_parser matches 0 run scoreboard players set #tal.array.dedup.no_contain_f tal.str_parser 1

data modify entity @s Tags set from storage t_algorithm_lib:array dedup.list3
