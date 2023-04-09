
scoreboard players add #tal.o.ITJ.Effects.Amplifier tal.input 1

scoreboard players set #20 tal.input 20
scoreboard players set #10 tal.input 10
scoreboard players set #15 tal.input 15
scoreboard players set #3 tal.input 3
scoreboard players set #4 tal.input 4
#20%×等级
execute if score #tal.o.ITJ.Effects.id tal.input matches 1 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.input *= #20 tal.input

data modify storage t_algorithm_lib:item_to_json temp.sign set value '{"text":"none"}'

execute if score #tal.o.ITJ.Effects.id tal.input matches 1 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.movement_speed"}],"color":"#5454FC"}]'
#15%*等级
execute if score #tal.o.ITJ.Effects.id tal.input matches 2 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.input *= #15 tal.input
execute if score #tal.o.ITJ.Effects.id tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.movement_speed"}],"color":"#FC5454"}]'
#攻击速度和挖掘速度提高10%和20% * 等级
execute if score #tal.o.ITJ.Effects.id tal.input matches 3 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.input *= #10 tal.input
execute if score #tal.o.ITJ.Effects.id tal.input matches 3 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.attack_speed"}],"color":"#5454FC"}]'
#攻击速度降低(10 × 等级)%
execute if score #tal.o.ITJ.Effects.id tal.input matches 4 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.input *= #10 tal.input
execute if score #tal.o.ITJ.Effects.id tal.input matches 4 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.attack_speed"}],"color":"#FC5454"}]'
#3（♥♥）×等级
execute if score #tal.o.ITJ.Effects.id tal.input matches 5 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.input *= #3 tal.input
execute if score #tal.o.ITJ.Effects.id tal.input matches 5 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.attack_damage"}],"color":"#5454FC"}]'
#4（♥♥）×等级
execute if score #tal.o.ITJ.Effects.id tal.input matches 18 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.input *= #4 tal.input
execute if score #tal.o.ITJ.Effects.id tal.input matches 18 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.attack_damage"}],"color":"#FC5454"}]'
#每级提升4（♥♥）生命值上限
execute if score #tal.o.ITJ.Effects.id tal.input matches 21 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.input *= #4 tal.input
execute if score #tal.o.ITJ.Effects.id tal.input matches 21 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.max_health"}],"color":"#5454FC"}]'
#1 × 等级
execute if score #tal.o.ITJ.Effects.id tal.input matches 26 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.luck"}],"color":"#5454FC"}]'
#减去 1 × 等级
execute if score #tal.o.ITJ.Effects.id tal.input matches 27 run data modify storage t_algorithm_lib:item_to_json temp.sign set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}},{"translate":"attribute.name.generic.luck"}],"color":"#FC5454"}]'

data modify block -29999999 3 20228222 Text3 set from storage t_algorithm_lib:item_to_json temp.sign
execute if score #tal.sign_version tal.input matches 2 run data modify block -29999999 3 20228222 front_text.messages[2] set from storage t_algorithm_lib:item_to_json temp.sign

execute unless data storage t_algorithm_lib:item_to_json temp{sign:'{"text":"none"}'} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank append from block -29999999 3 20228222 Text3
execute if score #tal.sign_version tal.input matches 2 run execute unless data storage t_algorithm_lib:item_to_json temp{sign:'{"text":"none"}'} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank append from block -29999999 3 20228222 front_text.messages[2]
