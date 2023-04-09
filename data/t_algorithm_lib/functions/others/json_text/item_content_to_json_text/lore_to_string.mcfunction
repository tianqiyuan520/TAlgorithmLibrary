
data modify storage t_algorithm_lib:item_to_json temp.string_list append value "\\n"
##先加个紫色，默认紫色斜体(巧用text与extra 父系和子系节点)
data modify block -29999999 3 20228222 Text4 set value '[{"text":"","extra":[{"nbt": "temp.item_lore[0]","storage": "t_algorithm_lib:item_to_json","interpret": true}]}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block -29999999 3 20228222 front_text.messages[3] set value '[{"text":"","extra":[{"nbt": "temp.item_lore[0]","storage": "t_algorithm_lib:item_to_json","interpret": true}]}]'

data modify block -29999999 3 20228222 Text4 set value '{"nbt": "Text4","block": "-29999999 3 20228222","interpret": true,"color":"#A800A8","italic": true}'
execute if score #tal.sign_version tal.input matches 2 run data modify block -29999999 3 20228222 front_text.messages[3] set value '{"nbt": "Text4","block": "-29999999 3 20228222","interpret": true,"color":"#A800A8","italic": true}'


data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 Text4
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 front_text.messages[3]

# data modify storage t_algorithm_lib:item_to_json temp.string_list append from storage t_algorithm_lib:item_to_json temp.item_lore[0]
data remove storage t_algorithm_lib:item_to_json temp.item_lore[0]
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_lore
##获取列表个数:
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/lore_to_string