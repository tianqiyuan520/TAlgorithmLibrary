
execute positioned -29999999 3 20228209 run setblock ~ ~ ~ oak_sign

data modify storage t_algorithm_lib:item_to_json temp.item_CanPlaceOn.list set value []
data modify storage t_algorithm_lib:item_to_json temp.item_CanPlaceOn.list set from storage t_algorithm_lib:item_to_json temp.item.tag.CanPlaceOn

execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CanPlaceOn.list
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"text":"\\n"},{"translate":"item.canPlace","color":"#A8A8A8"}]'
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CanPlaceOn.list
execute if score #tal.o.ITJ.list.count tal.input matches 1.. positioned -29999999 3 20228209 run function t_algorithm_lib:others/json_text/item_content_to_json_text/can_place_on/loop
