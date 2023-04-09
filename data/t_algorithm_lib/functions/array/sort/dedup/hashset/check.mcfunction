
##判断是否含有
execute as @e[tag=tal.dedup.entity,type=armor_stand,distance=..1] if score @s tal.input = #tal.array.dedup.check_uuid tal.input store result score #tal.array.dedup.entity_tags tal.input run data get entity @s Tags
execute as @e[tag=tal.dedup.entity,type=armor_stand,distance=..1] if score @s tal.input = #tal.array.dedup.check_uuid tal.input if score #tal.array.dedup.entity_tags tal.input matches ..1023 run function t_algorithm_lib:array/sort/dedup/hashset/small
execute as @e[tag=tal.dedup.entity,type=armor_stand,distance=..1] if score @s tal.input = #tal.array.dedup.check_uuid tal.input if score #tal.array.dedup.entity_tags tal.input matches 1024.. run function t_algorithm_lib:array/sort/dedup/hashset/big



scoreboard players add #tal.array.dedup.check_uuid tal.input 1
execute if score #tal.array.dedup.no_contain_f tal.input matches 0 if score #tal.array.dedup.no_contain tal.input matches 0 if score #tal.array.dedup.groups tal.input >= #tal.array.dedup.check_uuid tal.input run function t_algorithm_lib:array/sort/dedup/hashset/check