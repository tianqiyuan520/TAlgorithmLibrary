
##判断附魔

data modify storage t_algorithm_lib:item_to_json temp.Enchantments_check set from storage t_algorithm_lib:item_to_json temp.item_Enchantments[0]

execute unless data storage t_algorithm_lib:item_to_json temp.Enchantments_check{id:""} unless data storage t_algorithm_lib:item_to_json temp.Enchantments_check{id:" "} run data modify storage t_algorithm_lib:item_to_json temp.string_list append value "\\n"

function t_algorithm_lib:others/json_text/item_content_to_json_text/enchantments/check_id_and_lvl


data remove storage t_algorithm_lib:item_to_json temp.item_Enchantments[0]
data modify storage t_algorithm_lib:item_to_json temp.Enchantments_check set value {}
##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Enchantments
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/enchantments/enchantments_loop