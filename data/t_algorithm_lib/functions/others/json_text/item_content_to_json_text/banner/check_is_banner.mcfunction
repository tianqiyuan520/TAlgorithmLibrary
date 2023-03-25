summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["tal.o.ITJ.check_is_banner"],NoGravity:1b,Invulnerable:1b}
execute as @e[tag=tal.o.ITJ.check_is_banner,distance=..1,sort=nearest] at @s run data modify entity @s HandItems[0] set from storage t_algorithm_lib:item_to_json temp.item

execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_Patterns.list
execute if entity @e[tag=tal.o.ITJ.check_is_banner,distance=..1,sort=nearest,predicate=t_algorithm_lib:check_is_banner] if score #tal.o.ITJ.list.count tal.str_parser matches 1.. positioned -29999999 3 20228209 run function t_algorithm_lib:others/json_text/item_content_to_json_text/banner/loop

kill @e[tag=tal.o.ITJ.check_is_banner,distance=..1,sort=nearest]
