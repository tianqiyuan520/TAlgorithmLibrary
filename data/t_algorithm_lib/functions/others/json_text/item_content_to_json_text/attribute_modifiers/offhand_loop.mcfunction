
##判断附魔


data modify storage t_algorithm_lib:item_to_json temp.string_list append value "\\n"
data modify block -29999999 3 20228222 Text4 set value '{"nbt": "temp.item_AttributeModifiers.offhand[0]","storage": "t_algorithm_lib:item_to_json","interpret": true}'
execute if score #tal.sign_version tal.input matches 2 run data modify block -29999999 3 20228222 front_text.messages[3] set value '{"nbt": "temp.item_AttributeModifiers.offhand[0]","storage": "t_algorithm_lib:item_to_json","interpret": true}'
data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 Text4
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 front_text.messages[3]



data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.offhand[0]
##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.offhand
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/offhand_loop