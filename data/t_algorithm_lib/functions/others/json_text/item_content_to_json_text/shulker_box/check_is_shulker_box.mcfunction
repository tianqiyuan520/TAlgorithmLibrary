##检测是不是潜影盒
scoreboard players set #tal.o.ITJ.is_shulker_box tal.input 0
summon armor_stand ~ ~ ~ {Tags:["tal.o.ITJ.armor_stand_temp.check_item"],HandItems:[{id:"minecraft:dirt",Count:1b}]}
data modify entity @e[tag=tal.o.ITJ.armor_stand_temp.check_item,limit=1,distance=..2] HandItems[0].id set from storage t_algorithm_lib:item_to_json temp.item.id
execute as @e[tag=tal.o.ITJ.armor_stand_temp.check_item,limit=1,distance=..2] if predicate t_algorithm_lib:check_shulker_box run scoreboard players set #tal.o.ITJ.is_shulker_box tal.input 1
kill @e[tag=tal.o.ITJ.armor_stand_temp.check_item,limit=1,distance=..2]


execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item.tag.BlockEntityTag.Items
execute if score #tal.o.ITJ.is_shulker_box tal.input matches 1 if score #tal.o.ITJ.list.count tal.input matches 1.. positioned -29999999 3 20228209 run function t_algorithm_lib:others/json_text/item_content_to_json_text/shulker_box/start