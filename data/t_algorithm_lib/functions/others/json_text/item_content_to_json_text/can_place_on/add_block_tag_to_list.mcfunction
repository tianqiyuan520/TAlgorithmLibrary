data remove storage t_algorithm_lib:item_to_json temp.item_CanPlaceOn.list[0]
data modify storage t_algorithm_lib:item_to_json temp.tag.blocks append from storage t_algorithm_lib:item_to_json temp.item_CanPlaceOn.list[0]

execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_CanPlaceOn.list
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/can_place_on/add_block_tag_to_list