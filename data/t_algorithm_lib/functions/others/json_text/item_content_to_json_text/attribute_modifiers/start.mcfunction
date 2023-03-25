##主手 副手 脚上 腿上 身上 头上
# give @p minecraft:enchanted_book{Enchantments:[{id:"minecraft:sharpness",lvl:3}],StoredEnchantments:[{id:"minecraft:sharpness",lvl:4}],display:{Lore:['{"text": "1"}']},Damage:1,Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;12,1123,311,22]}]}
scoreboard players set #tal.o.ITJ.equal tal.str_parser 0

execute store result score #tal.o.ITJ.number1 tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.HideFlags_list[-6]
data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.list set value []
data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.list set from storage t_algorithm_lib:item_to_json temp.item.tag.AttributeModifiers
data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.mainhand
data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.offhand
data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.feet
data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.legs
data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.chest
data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.head
#如果没有修饰，则判断是否为装备武器工具
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.list
execute if score #tal.o.ITJ.list.count tal.str_parser matches 0 run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_armor_tool_weapon
    #"item.modifiers.chest": "穿在身上时：",
    # "item.modifiers.feet": "穿在脚上时：",
    # "item.modifiers.head": "戴在头上时：",
    # "item.modifiers.legs": "穿在腿上时：",
    # "item.modifiers.mainhand": "在主手时：",
    # "item.modifiers.offhand": "在副手时：",

    # "attribute.name.generic.armor": "盔甲",
    # "attribute.name.generic.armor_toughness": "盔甲韧性",
    # "attribute.name.generic.attack_damage": "攻击伤害",
    # "attribute.name.generic.attack_knockback": "击退",
    # "attribute.name.generic.attack_speed": "攻击速度",
    # "attribute.name.generic.flying_speed": "飞行速度",
    # "attribute.name.generic.follow_range": "生物跟随距离",
    # "attribute.name.generic.knockback_resistance": "击退抗性",
    # "attribute.name.generic.luck": "幸运",
    # "attribute.name.generic.max_health": "最大生命值",
    # "attribute.name.generic.movement_speed": "速度",
    # "attribute.name.horse.jump_strength": "马匹跳跃能力",
    # "attribute.name.zombie.spawn_reinforcements": "僵尸增援",
    # "attribute.unknown": "未知的属性",

execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.list
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_loop

##主手

##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.mainhand
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.mainhand prepend value '{"translate":"item.modifiers.mainhand","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.mainhand prepend value '\\n'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/mainhand_loop

##副手

##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.offhand
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.offhand prepend value '{"translate":"item.modifiers.offhand","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.offhand prepend value '\\n'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/offhand_loop

##脚

##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.feet
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.feet prepend value '{"translate":"item.modifiers.feet","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.feet prepend value '\\n'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/feet_loop

##腿

##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.legs
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.legs prepend value '{"translate":"item.modifiers.legs","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.legs prepend value '\\n'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/legs_loop

##身体

##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.chest
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.chest prepend value '{"translate":"item.modifiers.chest","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.chest prepend value '\\n'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/chest_loop

##头

##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.head
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.head prepend value '{"translate":"item.modifiers.head","color":"#A8A8A8"}'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.head prepend value '\\n'
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/head_loop