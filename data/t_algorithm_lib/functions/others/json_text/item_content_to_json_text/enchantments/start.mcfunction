##优先StoredEnchantments(附魔书) 再Enchantments
#{Enchantments:[{id:"minecraft:sharpness",lvl:3}],StoredEnchantments:[{id:"minecraft:sharpness",lvl:4}]}

# give @s minecraft:enchanted_book{Enchantments:[{id:"minecraft:sharpness",lvl:3}],StoredEnchantments:[{id:"minecraft:sharpness",lvl:4}],display:{Lore:['{"text": "1"}']},Damage:1,Unbreakable:1b}
# give @s minecraft:bow{Enchantments:[{id:"minecraft:sharpness",lvl:3}],StoredEnchantments:[{id:"minecraft:sharpness",lvl:4}],display:{Lore:['{"text": "1"}']},Damage:1,Unbreakable:1b}


##判断是否是附魔书
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-6]
data remove storage t_algorithm_lib:item_to_json temp.item_StoredEnchantments
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item.tag.StoredEnchantments if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:enchanted_book"} run data modify storage t_algorithm_lib:item_to_json temp.item_StoredEnchantments set from storage t_algorithm_lib:item_to_json temp.item.tag.StoredEnchantments
execute if data storage t_algorithm_lib:item_to_json temp.item_StoredEnchantments run function t_algorithm_lib:others/json_text/item_content_to_json_text/enchantments/stored_enchantments_loop


execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-1]
data remove storage t_algorithm_lib:item_to_json temp.item_Enchantments
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item.tag.Enchantments run data modify storage t_algorithm_lib:item_to_json temp.item_Enchantments set from storage t_algorithm_lib:item_to_json temp.item.tag.Enchantments

execute if data storage t_algorithm_lib:item_to_json temp.item_Enchantments run function t_algorithm_lib:others/json_text/item_content_to_json_text/enchantments/enchantments_loop
