execute if data storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check{Slot:"mainhand"} run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.mainhand append from storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text
execute if data storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check{Slot:"offhand"} run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.offhand append from storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text
execute if data storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check{Slot:"feet"} run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.feet append from storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text
execute if data storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check{Slot:"legs"} run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.legs append from storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text
execute if data storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check{Slot:"chest"} run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.chest append from storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text
execute if data storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check{Slot:"head"} run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.head append from storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text

#如果没有Slot,则都添加
execute unless data storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check.Slot run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/add_all_slot
