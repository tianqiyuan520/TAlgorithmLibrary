
##判断是否含有
execute as @e[tag=tal.dedup.entity,type=armor_stand,distance=..1] if score @s tal.str_parser = #tal.array.dedup.check_uuid tal.str_parser store result score #tal.array.dedup.entity_tags tal.str_parser run data get entity @s Tags
execute as @e[tag=tal.dedup.entity,type=armor_stand,distance=..1] if score @s tal.str_parser = #tal.array.dedup.check_uuid tal.str_parser if score #tal.array.dedup.entity_tags tal.str_parser matches ..1023 run function t_algorithm_lib:array/sort/dedup/hashset/small
execute as @e[tag=tal.dedup.entity,type=armor_stand,distance=..1] if score @s tal.str_parser = #tal.array.dedup.check_uuid tal.str_parser if score #tal.array.dedup.entity_tags tal.str_parser matches 1024.. run function t_algorithm_lib:array/sort/dedup/hashset/big



scoreboard players add #tal.array.dedup.check_uuid tal.str_parser 1
execute if score #tal.array.dedup.no_contain_f tal.str_parser matches 0 if score #tal.array.dedup.no_contain tal.str_parser matches 0 if score #tal.array.dedup.groups tal.str_parser >= #tal.array.dedup.check_uuid tal.str_parser run function t_algorithm_lib:array/sort/dedup/hashset/check