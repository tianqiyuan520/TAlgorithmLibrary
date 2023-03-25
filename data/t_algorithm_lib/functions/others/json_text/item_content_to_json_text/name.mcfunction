data modify storage t_algorithm_lib:item_to_json temp.item_name set from storage t_algorithm_lib:item_to_json temp.item.tag.display.Name
#如果有附魔 便加附魔蓝字
execute unless data storage t_algorithm_lib:item_to_json temp.item.tag.display.Name if data storage t_algorithm_lib:item_to_json temp.item.tag.Enchantments run data modify storage t_algorithm_lib:item_to_json temp.item_name set value '{"selector":"@e[type=item,distance=..2,limit=1]","color":"#54FCFC"}'
execute unless data storage t_algorithm_lib:item_to_json temp.item.tag.display.Name unless data storage t_algorithm_lib:item_to_json temp.item.tag.Enchantments run data modify storage t_algorithm_lib:item_to_json temp.item_name set value '{"selector":"@e[type=item,distance=..2,limit=1]"}'
#如果有标题，且为成书
execute unless data storage t_algorithm_lib:item_to_json temp.item.tag.display.Name if data storage t_algorithm_lib:item_to_json temp.item.tag.title if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:written_book"} run data modify storage t_algorithm_lib:item_to_json temp.item_name set value '{"nbt":"temp.item.tag.title","storage":"t_algorithm_lib:item_to_json","color":"#54FCFC"}'

# data modify storage t_algorithm_lib:item_to_json temp.item_name set value '{"selector":"@e[type=item,distance=..2,limit=1]"}'

data modify storage t_algorithm_lib:item_to_json temp.string_list append from storage t_algorithm_lib:item_to_json temp.item_name

