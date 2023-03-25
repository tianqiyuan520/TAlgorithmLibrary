data modify storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list set value []
data modify storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list set from storage t_algorithm_lib:item_to_json temp.item.tag.BlockEntityTag.Items


scoreboard players set #tal.o.ITJ.is_shulker_box_items tal.str_parser 0

execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list 
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. positioned -29999999 3 20228209 run function t_algorithm_lib:others/json_text/item_content_to_json_text/shulker_box/loop