data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":", ","color":"#A8A8A8"},{"translate":"item.minecraft.firework_star.custom_color","color":"#A8A8A8"}]'
data remove storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0].FadeColors
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0].FadeColors
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/firework/check_fade_color