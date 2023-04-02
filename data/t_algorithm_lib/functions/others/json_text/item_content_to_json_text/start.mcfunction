forceload add -29999999 20228222
forceload add -29999999 20228209
##生物前置
summon area_effect_cloud ~ ~ ~ {Tags:["tal.o.ITJ.temp"]}
execute as @e[type=area_effect_cloud,tag=tal.o.ITJ.temp] run summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["tal.o.ITJ.item_temp"]}
data modify entity @e[tag=tal.o.ITJ.item_temp,limit=1] Item set from storage t_algorithm_lib:item_to_json temp.item
#
##合并
data modify storage t_algorithm_lib:item_to_json temp.string_list set value [""]

#HideFlags: 决定隐藏显示物品的哪些信息。1（0b00000001）对应"Enchantments"、2（0b00000010）对应"AttributeModifiers"、4（0b00000100）对应"Unbreakable"、8（0b00001000）对应 "CanDestroy"、16（0b00010000）对应 "CanPlaceOn"、32（0b00100000）对应其他信息(包括药水效果、"StoredEnchantments"、成书的 "generation" 和 "author"、烟花火箭的"Explosion"和"Fireworks"，以及地图提示）、64（0b01000000）对应皮革盔甲的"color"。此值按位提供组合效果，例如，设置为3（0b00000011）时，"Enchantments"和"AttributeModifiers"标签不会显示，设置为63（0b00111111）时除"color"标签外所有信息都不显示，设置为127（0b01111111）时所有信息都不显示。
# /execute if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:enchanted_book"}

#将HideFlags的十进制数据转化为二进制
execute store result score #tal.o.ITJ.item.HideFlags tal.input run data get storage t_algorithm_lib:item_to_json temp.item.tag.HideFlags
scoreboard players operation #tal.array.decimal_to_binary.num tal.input = #tal.o.ITJ.item.HideFlags tal.input
function t_algorithm_lib:array/decimal_to_binary/start
data modify storage t_algorithm_lib:item_to_json temp.HideFlags_list set from storage t_algorithm_lib:array decimal_to_binary.list


##Name
function t_algorithm_lib:others/json_text/item_content_to_json_text/name
##物品个数
execute store result storage t_algorithm_lib:item_to_json temp.count int 1 run data get storage t_algorithm_lib:item_to_json temp.item.Count
##旗帜banner
function t_algorithm_lib:others/json_text/item_content_to_json_text/banner/start
##潜影盒shulker_box 
function t_algorithm_lib:others/json_text/item_content_to_json_text/shulker_box/check_is_shulker_box

##firework烟花之星和烟花火箭
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-6]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 run function t_algorithm_lib:others/json_text/item_content_to_json_text/firework/start
##书本 成书
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-6]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:written_book"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/written_book/start
##地图map
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-6]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:filled_map"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/map
##药水效果CustomPotionEffects
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-6]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:potion"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/start
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:lingering_potion"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/start
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item{id:"minecraft:splash_potion"} run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/start

##附魔
function t_algorithm_lib:others/json_text/item_content_to_json_text/enchantments/start
##皮革盔甲的"color"
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-6]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item.tag.display.color run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"item.dyed","color":"#A8A8A8"}]'
##Lore
function t_algorithm_lib:others/json_text/item_content_to_json_text/lore

##是否物品显示个数
# scoreboard players set #tal.o.ITJ.show_count tal.input 1
execute positioned -29999999 3 20228222 run setblock ~ ~ ~ oak_sign
##将lore添加到string_list
execute if data storage t_algorithm_lib:item_to_json temp.item_lore run function t_algorithm_lib:others/json_text/item_content_to_json_text/lore_to_string
##属性AttributeModifiers
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-2]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/start


##方块标签,方便解析
# data modify storage t_algorithm_lib:item_to_json tags.blocks append value {tag:"#t_algorithm_lib:item_to_json:cross",blocks:["minecraft:air","minecraft:void_air","minecraft:cave_air","minecraft:water","minecraft:lava","minecraft:grass","minecraft:tall_grass"]}
##CanDestroy能破坏
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-4]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 run function t_algorithm_lib:others/json_text/item_content_to_json_text/can_destroy/start
##CanPlaceOn能放置在
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-5]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 run function t_algorithm_lib:others/json_text/item_content_to_json_text/can_place_on/start
# give @p minecraft:potion{author:"1",filtered_title:"1",title:"12",generation:0,Enchantments:[{id:"minecraft:sharpness",lvl:3}],StoredEnchantments:[{id:"minecraft:sharpness",lvl:4}],display:{Lore:['{"text": "1"}']},Damage:1,Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:20,Operation:0,UUID:[I;12,1123,311,22],Slot:"mainhand"}],Potion:"minecraft:long_strength",CustomPotionEffects:[{Id:3,Duration:20}]}
##无法破坏
execute store result score #tal.o.ITJ.number1 tal.input run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-4]
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item.tag{Unbreakable:1b} run function t_algorithm_lib:others/json_text/item_content_to_json_text/unbreakable
execute unless score #tal.o.ITJ.number1 tal.input matches 1 if data storage t_algorithm_lib:item_to_json temp.item.tag{Unbreakable:1} run function t_algorithm_lib:others/json_text/item_content_to_json_text/unbreakable

execute positioned -29999999 3 20228222 run function t_algorithm_lib:others/json_text/item_content_to_json_text/name_and_lore_to_string

##生成物品
#是否显示个数
execute as @e[type=area_effect_cloud,tag=tal.o.ITJ.temp,distance=..2] run scoreboard players operation @s tal.input = #tal.o.ITJ.show_count tal.input
execute as @e[type=area_effect_cloud,tag=tal.o.ITJ.temp,distance=..2] run loot spawn ~ ~ ~ loot t_algorithm_lib:others/item_content_to_json_text/get_selector

##读取结果
data modify storage t_algorithm_lib:item_to_json temp.text set from entity @e[tag=!tal.o.ITJ.item_temp,limit=1,distance=..4,type=item] Item.tag.display.Name
tellraw @a [{"nbt":"temp.text","storage": "t_algorithm_lib:item_to_json","interpret": true}]
# data modify storage t_algorithm_lib:item_to_json temp.item set value {}

kill @e[tag=tal.o.ITJ.temp,distance=..1]
kill @e[type=item,distance=..2]