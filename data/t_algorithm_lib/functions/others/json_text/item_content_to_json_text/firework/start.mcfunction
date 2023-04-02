# give @p minecraft:firework_rocket{Fireworks:{Flight:127b,Explosions:[{Flicker:true,Trail:true,Type:0b,Colors:[I;15604250,12748422,16711680],FadeColors:[I;15144984]},{Flicker:true,Trail:true,Type:3b,Colors:[I;15604250,12748422,3875362],FadeColors:[I;15144984,16312038]}]}}
##飞行时间
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_rocket"} if data storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Flight store result score #tal.o.ITJ.firework_rocket.Flight tal.input run data get storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Flight
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_rocket"} if data storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Flight run data modify block -29999999 3 20228222 Text4 set value '[{"text":"\\n"},{"translate":"item.minecraft.firework_rocket.flight","color":"#A8A8A8"},{"score":{"name": "#tal.o.ITJ.firework_rocket.Flight","objective": "tal.input"},"color":"#A8A8A8"}]'
execute if score #tal.sign_version tal.input matches 2 if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_rocket"} if data storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Flight run data modify block -29999999 3 20228222 front_text.messages[3] set value '[{"text":"\\n"},{"translate":"item.minecraft.firework_rocket.flight","color":"#A8A8A8"},{"score":{"name": "#tal.o.ITJ.firework_rocket.Flight","objective": "tal.input"},"color":"#A8A8A8"}]'

execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_rocket"} if data storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Flight run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 Text4
execute if score #tal.sign_version tal.input matches 2 if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_rocket"} if data storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Flight run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 front_text.messages[3]

##Explosions
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_rocket"} store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Explosions
data modify storage t_algorithm_lib:item_to_json temp.item_Explosions.list set value []
data modify storage t_algorithm_lib:item_to_json temp.item_Explosions.list set from storage t_algorithm_lib:item_to_json temp.item.tag.Fireworks.Explosions
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_rocket"} if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/firework/rocket_loop

execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_star"} store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item.tag.Explosion
data modify storage t_algorithm_lib:item_to_json temp.item_Explosions.list set value []
data modify storage t_algorithm_lib:item_to_json temp.item_Explosions.list append from storage t_algorithm_lib:item_to_json temp.item.tag.Explosion
execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:firework_star"} if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/firework/rocket_loop