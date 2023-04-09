#BlockEntityTag:{id:"minecraft:shulker_box",Items:[{id:"stone",Count:10}]}
summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["tal.o.ITJ.item_temp.items"]}
data modify entity @e[tag=tal.o.ITJ.item_temp.items,limit=1,distance=..2] Item.id set from storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list[0].id
#1-127
execute store result score #tal.o.ITJ.item_Shulker_box.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list[0].Count

data modify block ~ ~ ~ Text4 set value '[{"text":"\\n"},{"selector":"@e[type=item,distance=..2,limit=1,tag=tal.o.ITJ.item_temp.items]","color":"#FCFCFC"},{"text":" x","color":"#FCFCFC"},{"score":{"name": "#tal.o.ITJ.item_Shulker_box.count","objective": "tal.input"},"color":"#FCFCFC"}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block ~ ~ ~ front_text.messages[3] set value '[{"text":"\\n"},{"selector":"@e[type=item,distance=..2,limit=1,tag=tal.o.ITJ.item_temp.items]","color":"#FCFCFC"},{"text":" x","color":"#FCFCFC"},{"score":{"name": "#tal.o.ITJ.item_Shulker_box.count","objective": "tal.input"},"color":"#FCFCFC"}]'

execute if data storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list[0].tag.display.Name run data modify block ~ ~ ~ Text4 set value '[{"text":"\\n"},{"nbt":"temp.item_Shulker_box.list[0].tag.display.Name","storage":"t_algorithm_lib:item_to_json","interpret": true,"extra": [{"text":" x"},{"score":{"name": "#tal.o.ITJ.item_Shulker_box.count","objective": "tal.input"}}]}]'
execute if score #tal.sign_version tal.input matches 2 if data storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list[0].tag.display.Name run data modify block ~ ~ ~ front_text.messages[3] set value '[{"text":"\\n"},{"nbt":"temp.item_Shulker_box.list[0].tag.display.Name","storage":"t_algorithm_lib:item_to_json","interpret": true,"extra": [{"text":" x"},{"score":{"name": "#tal.o.ITJ.item_Shulker_box.count","objective": "tal.input"}}]}]'

kill @e[tag=tal.o.ITJ.item_temp.items,distance=..2,limit=1]
data modify storage t_algorithm_lib:item_to_json temp.string_list append from block ~ ~ ~ Text4
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block ~ ~ ~ front_text.messages[3]

data remove storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list[0]
scoreboard players add #tal.o.ITJ.is_shulker_box_items tal.input 1

execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Shulker_box.list
execute if score #tal.o.ITJ.is_shulker_box_items tal.input matches 5.. if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify block ~ ~ ~ Text4 set value '[{"text":"\\n"},{"translate":"container.shulkerBox.more","color":"#FCFCFC","with":[{"score":{"name": "#tal.o.ITJ.list.count","objective": "tal.input"},"color":"#FCFCFC"}]}]'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.is_shulker_box_items tal.input matches 5.. if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify block ~ ~ ~ front_text.messages[3] set value '[{"text":"\\n"},{"translate":"container.shulkerBox.more","color":"#FCFCFC","with":[{"score":{"name": "#tal.o.ITJ.list.count","objective": "tal.input"},"color":"#FCFCFC"}]}]'

execute if score #tal.o.ITJ.is_shulker_box_items tal.input matches 5.. if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block ~ ~ ~ Text4
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.is_shulker_box_items tal.input matches 5.. if score #tal.o.ITJ.list.count tal.input matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block ~ ~ ~ front_text.messages[3]

execute if score #tal.o.ITJ.is_shulker_box_items tal.input matches ..4 if score #tal.o.ITJ.list.count tal.input matches 1.. positioned -29999999 3 20228209 run function t_algorithm_lib:others/json_text/item_content_to_json_text/shulker_box/loop