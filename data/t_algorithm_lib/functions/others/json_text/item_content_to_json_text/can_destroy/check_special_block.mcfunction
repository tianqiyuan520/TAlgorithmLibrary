data modify storage t_algorithm_lib:item_to_json temp.sign set value ""
execute if data storage t_algorithm_lib:item_to_json temp.check{id:"minecraft:air"} run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"block.minecraft.air","color":"#545454"}]'
execute if data storage t_algorithm_lib:item_to_json temp.check{id:"minecraft:void_air"} run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"block.minecraft.void_air","color":"#545454"}]'
execute if data storage t_algorithm_lib:item_to_json temp.check{id:"minecraft:cave_air"} run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"block.minecraft.cave_air","color":"#545454"}]'
execute if data storage t_algorithm_lib:item_to_json temp.check{id:"minecraft:water"} run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"block.minecraft.water","color":"#545454"}]'
execute if data storage t_algorithm_lib:item_to_json temp.check{id:"minecraft:lava"} run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"block.minecraft.lava","color":"#545454"}]'


data modify block ~ ~ ~ Text4 set from storage t_algorithm_lib:item_to_json temp.sign
execute if score #tal.sign_version tal.input matches 2 run data modify block ~ ~ ~ front_text.messages[3] set from storage t_algorithm_lib:item_to_json temp.sign