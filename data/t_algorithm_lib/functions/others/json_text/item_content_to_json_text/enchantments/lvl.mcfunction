#读取等级
scoreboard players set #tal.o.ITJ.item.enchantments_lvl tal.input 0
execute store result score #tal.o.ITJ.item.enchantments_lvl tal.input run data get storage t_algorithm_lib:item_to_json temp.Enchantments_check.lvl
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"text":" "}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 1 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.1","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.2","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 3 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.3","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 4 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.4","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 5 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.5","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 6 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.6","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 7 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.7","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 8 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.8","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 9 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.9","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 10 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.10","color":"#A8A8A8"}'




# 大于11,先解析
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 11.. run data modify block -29999999 3 20228222 Text4 set value '{"translate":"enchantment.level.%s","color":"#A8A8A8","with":[{"score":{"name": "#tal.o.ITJ.item.enchantments_lvl","objective": "tal.input"}}]}'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 11.. run data modify block -29999999 3 20228222 front_text.messages[3] set value '{"translate":"enchantment.level.%s","color":"#A8A8A8","with":[{"score":{"name": "#tal.o.ITJ.item.enchantments_lvl","objective": "tal.input"}}]}'
execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 11.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 Text4
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 11.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 front_text.messages[3]

# execute if score #tal.o.ITJ.item.enchantments_lvl tal.input matches 11.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"translate":"enchantment.level.%s","color":"#A8A8A8","with":[{"score":{"name": "#tal.o.ITJ.item.enchantments_lvl","objective": "tal.input"}}]}'