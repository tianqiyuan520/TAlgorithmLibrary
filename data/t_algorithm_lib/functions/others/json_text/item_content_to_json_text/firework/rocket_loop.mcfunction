##{Fireworks:{Flight:127b,Explosions:[{Flicker:true,Trail:true,Type:0b,Colors:[I;15604250,12748422,16711680],FadeColors:[I;15144984]},{Flicker:true,Trail:true,Type:3b,Colors:[I;15604250,12748422,3875362],FadeColors:[I;15144984,16312038]}]}}
##Type: 爆炸时的形态. 0 = 小球, 1 = 大球 ，2 = 星星，3 = 苦力怕的头，4 = 爆裂。其他值将会被认定为未知，均为小型球状。
scoreboard players set #tal.o.ITJ.firework_star.Type tal.input 0
execute store result score #tal.o.ITJ.firework_star.Type tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0].Type
execute if score #tal.o.ITJ.firework_star.Type tal.input matches 0 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.shape.small_ball","color":"#A8A8A8"}]'
execute if score #tal.o.ITJ.firework_star.Type tal.input matches 1 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.shape.large_ball","color":"#A8A8A8"}]'
execute if score #tal.o.ITJ.firework_star.Type tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.shape.star","color":"#A8A8A8"}]'
execute if score #tal.o.ITJ.firework_star.Type tal.input matches 3 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.shape.creeper","color":"#A8A8A8"}]'
execute if score #tal.o.ITJ.firework_star.Type tal.input matches 4 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.shape.burst","color":"#A8A8A8"}]'
execute if score #tal.o.ITJ.firework_star.Type tal.input matches 5.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.shape.small_ball","color":"#A8A8A8"}]'
##爆炸颜色
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0].Colors
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.custom_color","color":"#A8A8A8"}]'
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/firework/check_color
##Fade颜色
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0].FadeColors
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.fade_to","color":"#A8A8A8"},{"text":" "},{"translate":"item.minecraft.firework_star.custom_color","color":"#A8A8A8"}]'
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/firework/check_fade_color
##踪迹
scoreboard players set #tal.o.ITJ.firework_star.Trail tal.input 0
execute store result score #tal.o.ITJ.firework_star.Trail tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0].Trail
execute if score #tal.o.ITJ.firework_star.Trail tal.input matches 1 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.trail","color":"#A8A8A8"}]'
##闪烁
scoreboard players set #tal.o.ITJ.firework_star.Flicker tal.input 0
execute store result score #tal.o.ITJ.firework_star.Flicker tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0].Flicker
execute if score #tal.o.ITJ.firework_star.Flicker tal.input matches 1 run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.minecraft.firework_star.flicker","color":"#A8A8A8"}]'
##
data remove storage t_algorithm_lib:item_to_json temp.item_Explosions.list[0]

execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Explosions.list
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/firework/rocket_loop