scoreboard players set #tal.o.ITJ.list.success tal.input 0
#判断是否成功
data modify storage t_algorithm_lib:item_to_json temp.isChar set from storage t_algorithm_lib:item_to_json temp.item_CanDestroy.list[0]
#判断 1为失败 0为成功
scoreboard players set #tal.o.ITJ.IsFail tal.input 1
execute store success score #tal.o.ITJ.IsFail tal.input run data modify storage t_algorithm_lib:item_to_json temp.isChar set from storage t_algorithm_lib:item_to_json tags.blocks[0].tag

#成功则添加到 CanDestroy中
data modify storage t_algorithm_lib:item_to_json temp.tag.blocks set value []
execute if score #tal.o.ITJ.IsFail tal.input matches 0 run data modify storage t_algorithm_lib:item_to_json temp.tag.blocks set from storage t_algorithm_lib:item_to_json tags.blocks[0].blocks
execute if score #tal.o.ITJ.IsFail tal.input matches 0 run function t_algorithm_lib:others/json_text/item_content_to_json_text/can_destroy/add_block_tag_to_list
execute if score #tal.o.ITJ.IsFail tal.input matches 0 run data modify storage t_algorithm_lib:item_to_json temp.item_CanDestroy.list set from storage t_algorithm_lib:item_to_json temp.tag.blocks

data modify storage t_algorithm_lib:item_to_json tags.blocks append from storage t_algorithm_lib:item_to_json tags.blocks[0]
data remove storage t_algorithm_lib:item_to_json tags.blocks[0]
scoreboard players add #tal.o.ITJ.list.count2 tal.input 1
execute if score #tal.o.ITJ.list.success tal.input matches 0 if score #tal.o.ITJ.list.count2 tal.input < #tal.o.ITJ.list.count tal.input run function t_algorithm_lib:others/json_text/item_content_to_json_text/can_destroy/check_if_block_tag