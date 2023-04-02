##受到伤害 = 伤害*(1- (min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25 )
#生物盔甲值
execute store result score #tal.health_controller.armor tal.input run attribute @s minecraft:generic.armor get 10
#生物盔甲韧性
execute store result score #tal.health_controller.armor_toughness tal.input run attribute @s minecraft:generic.armor_toughness get 10

scoreboard players set #5 tal.input 5
scoreboard players set #200 tal.input 200
scoreboard players set #1 tal.input 1
scoreboard players set #10 tal.input 10
scoreboard players set #4 tal.input 4
scoreboard players set #25 tal.input 25

##防御点数/5
scoreboard players operation #tal.health_controller.armor/5 tal.input = #tal.health_controller.armor tal.input
scoreboard players operation #tal.health_controller.armor/5 tal.input /= #5 tal.input
##2+盔甲韧性/4
scoreboard players operation #tal.health_controller.armor_toughness/4 tal.input = #tal.health_controller.armor_toughness tal.input
scoreboard players add #tal.health_controller.armor_toughness/4 tal.input 20

##伤害/ (2+盔甲韧性/4)
scoreboard players operation #tal.health_controller.Hurt/ tal.input = #tal.health_controller.Hurt tal.input
scoreboard players operation #tal.health_controller.Hurt/ tal.input /= #tal.health_controller.armor_toughness/4 tal.input
##防御点数- 伤害/ (2+盔甲韧性/4)
scoreboard players operation #tal.health_controller.armor- tal.input = #tal.health_controller.armor tal.input
scoreboard players operation #tal.health_controller.armor- tal.input -= #tal.health_controller.Hurt/ tal.input

##max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4)
execute if score #tal.health_controller.armor/5 tal.input >= #tal.health_controller.armor- tal.input run scoreboard players operation #tal.health_controller.max() tal.input = #tal.health_controller.armor/5 tal.input
execute if score #tal.health_controller.armor/5 tal.input < #tal.health_controller.armor- tal.input run scoreboard players operation #tal.health_controller.max() tal.input = #tal.health_controller.armor- tal.input

execute if score #tal.health_controller.max() tal.input >= #200 tal.input run scoreboard players operation #tal.health_controller.min() tal.input = #200 tal.input
execute if score #tal.health_controller.max() tal.input < #200 tal.input run scoreboard players operation #tal.health_controller.min() tal.input = #tal.health_controller.max() tal.input

##(min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25
scoreboard players operation #tal.health_controller.min() tal.input /= #25 tal.input
##(1- (min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25
scoreboard players operation #10 tal.input -= #tal.health_controller.min() tal.input
##伤害*(1- (min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25 )
scoreboard players operation #tal.health_controller.Hurt tal.input *= #10 tal.input
scoreboard players set #10 tal.input 10
scoreboard players operation #tal.health_controller.Hurt tal.input /= #10 tal.input
