
data modify storage t_algorithm_lib:item_to_json temp.string_list append from storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank[0]

data remove storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank[0]
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/when_drank_loop