##受到伤害 = 伤害*(1- (min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25 )
#生物盔甲值
execute store result score #tal.health_controller.armor tal.str_parser run attribute @s minecraft:generic.armor get 10
#生物盔甲韧性
execute store result score #tal.health_controller.armor_toughness tal.str_parser run attribute @s minecraft:generic.armor_toughness get 10

scoreboard players set #5 tal.str_parser 5
scoreboard players set #200 tal.str_parser 200
scoreboard players set #1 tal.str_parser 1
scoreboard players set #10 tal.str_parser 10
scoreboard players set #4 tal.str_parser 4
scoreboard players set #25 tal.str_parser 25

##防御点数/5
scoreboard players operation #tal.health_controller.armor/5 tal.str_parser = #tal.health_controller.armor tal.str_parser
scoreboard players operation #tal.health_controller.armor/5 tal.str_parser /= #5 tal.str_parser
##2+盔甲韧性/4
scoreboard players operation #tal.health_controller.armor_toughness/4 tal.str_parser = #tal.health_controller.armor_toughness tal.str_parser
scoreboard players add #tal.health_controller.armor_toughness/4 tal.str_parser 20

##伤害/ (2+盔甲韧性/4)
scoreboard players operation #tal.health_controller.Hurt/ tal.str_parser = #tal.health_controller.Hurt tal.str_parser
scoreboard players operation #tal.health_controller.Hurt/ tal.str_parser /= #tal.health_controller.armor_toughness/4 tal.str_parser
##防御点数- 伤害/ (2+盔甲韧性/4)
scoreboard players operation #tal.health_controller.armor- tal.str_parser = #tal.health_controller.armor tal.str_parser
scoreboard players operation #tal.health_controller.armor- tal.str_parser -= #tal.health_controller.Hurt/ tal.str_parser

##max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4)
execute if score #tal.health_controller.armor/5 tal.str_parser >= #tal.health_controller.armor- tal.str_parser run scoreboard players operation #tal.health_controller.max() tal.str_parser = #tal.health_controller.armor/5 tal.str_parser
execute if score #tal.health_controller.armor/5 tal.str_parser < #tal.health_controller.armor- tal.str_parser run scoreboard players operation #tal.health_controller.max() tal.str_parser = #tal.health_controller.armor- tal.str_parser

execute if score #tal.health_controller.max() tal.str_parser >= #200 tal.str_parser run scoreboard players operation #tal.health_controller.min() tal.str_parser = #200 tal.str_parser
execute if score #tal.health_controller.max() tal.str_parser < #200 tal.str_parser run scoreboard players operation #tal.health_controller.min() tal.str_parser = #tal.health_controller.max() tal.str_parser

##(min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25
scoreboard players operation #tal.health_controller.min() tal.str_parser /= #25 tal.str_parser
##(1- (min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25
scoreboard players operation #10 tal.str_parser -= #tal.health_controller.min() tal.str_parser
##伤害*(1- (min(20, max(防御点数/5,防御点数- 伤害/ (2+盔甲韧性/4) ) ))/25 )
scoreboard players operation #tal.health_controller.Hurt tal.str_parser *= #10 tal.str_parser
scoreboard players set #10 tal.str_parser 10
scoreboard players operation #tal.health_controller.Hurt tal.str_parser /= #10 tal.str_parser
