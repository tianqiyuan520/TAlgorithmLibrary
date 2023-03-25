
##判断附魔


data modify storage t_algorithm_lib:item_to_json temp.string_list append value "\\n"
data modify block -29999999 3 20228222 Text4 set value '{"nbt": "temp.item_AttributeModifiers.feet[0]","storage": "t_algorithm_lib:item_to_json","interpret": true}'
data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 Text4



data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.feet[0]
##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.feet
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/feet_loop