data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list set value []
data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list set from storage t_algorithm_lib:item_to_json temp.item.tag.CustomPotionEffects
data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank set value []
##判断id,渲染原版药水 
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:potion"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/vanilla_potion
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:splash_potion"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/vanilla_potion
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:lingering_potion"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/vanilla_lingering_potion




execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/loop

##渲染 当生效后
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"text":"\\n"},{"translate":"当生效后：","color":"#A800A8"}]'
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/when_drank_loop
