##魔咒保护系数（EPF） 上限20 合计 EPF / 25
scoreboard players set #tal.health_controller.EPF tal.input 0
##玩家
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input

##非玩家
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s ArmorItems[1].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input

execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s ArmorItems[2].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input

execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score #tal.health_controller.EPF tal.input matches ..19 if entity @s[type=!player] store result score #tal.health_controller.protection_lvl tal.input run scoreboard players operation #tal.health_controller.EPF tal.input += #tal.health_controller.protection_lvl tal.input

##计算 伤害*(1-EPF/25)

execute if score #tal.health_controller.EPF tal.input matches 21.. run scoreboard players set #tal.health_controller.EPF tal.input 20
scoreboard players set #100 tal.input 100
scoreboard players set #25 tal.input 25
scoreboard players operation #tal.health_controller.EPF tal.input *= #100 tal.input
scoreboard players operation #tal.health_controller.EPF tal.input /= #25 tal.input
scoreboard players operation #100 tal.input -= #tal.health_controller.EPF tal.input
scoreboard players operation #tal.health_controller.Hurt tal.input *= #100 tal.input
scoreboard players set #100 tal.input 100
scoreboard players operation #tal.health_controller.Hurt tal.input /= #100 tal.input
