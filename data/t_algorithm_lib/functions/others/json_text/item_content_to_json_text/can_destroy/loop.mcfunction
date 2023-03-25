##判断是否为方块标签
##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json tags.blocks
#循环
scoreboard players set #tal.o.ITJ.list.count2 tal.str_parser 0
function t_algorithm_lib:others/json_text/item_content_to_json_text/can_destroy/check_if_block_tag

summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["tal.o.ITJ.item_temp.check_block"]}
data modify entity @e[tag=tal.o.ITJ.item_temp.check_block,limit=1,distance=..2] Item.id set from storage t_algorithm_lib:item_to_json temp.item_CanDestroy.list[0]
data modify block ~ ~ ~ Text4 set value '[{"text":"\\n"},{"selector":"@e[type=item,distance=..2,limit=1,tag=tal.o.ITJ.item_temp.check_block]","color":"#545454"}]'
#检测是否为特殊方块
data modify storage t_algorithm_lib:item_to_json temp.check.id set from storage t_algorithm_lib:item_to_json temp.item_CanDestroy.list[0]
function t_algorithm_lib:others/json_text/item_content_to_json_text/can_destroy/check_special_block
data modify storage t_algorithm_lib:item_to_json temp.string_list append from block ~ ~ ~ Text4

data remove storage t_algorithm_lib:item_to_json temp.item_CanDestroy.list[0]
kill @e[tag=tal.o.ITJ.item_temp.check_block,limit=1,distance=..2]
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_CanDestroy.list
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/can_destroy/loop