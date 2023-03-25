
scoreboard players add #tal.o.ITJ.Effects.Amplifier tal.str_parser 1

scoreboard players set #20 tal.str_parser 20
scoreboard players set #10 tal.str_parser 10
scoreboard players set #15 tal.str_parser 15
scoreboard players set #3 tal.str_parser 3
scoreboard players set #4 tal.str_parser 4
#20%×等级
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 1 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.str_parser *= #20 tal.str_parser
data modify block -29999999 3 20228222 Text3 set value '{"text":"none"}'

execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 1 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.movement_speed"}],"color":"#5454FC"}]'
#15%*等级
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 2 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.str_parser *= #15 tal.str_parser
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 2 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.movement_speed"}],"color":"#FC5454"}]'
#攻击速度和挖掘速度提高10%和20% * 等级
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 3 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.str_parser *= #10 tal.str_parser
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 3 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.attack_speed"}],"color":"#5454FC"}]'
#攻击速度降低(10 × 等级)%
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 4 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.str_parser *= #10 tal.str_parser
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 4 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.1","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.attack_speed"}],"color":"#FC5454"}]'
#3（♥♥）×等级
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 5 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.str_parser *= #3 tal.str_parser
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 5 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.attack_damage"}],"color":"#5454FC"}]'
#4（♥♥）×等级
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 18 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.str_parser *= #4 tal.str_parser
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 18 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.attack_damage"}],"color":"#FC5454"}]'
#每级提升4（♥♥）生命值上限
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 21 run scoreboard players operation #tal.o.ITJ.Effects.Amplifier tal.str_parser *= #4 tal.str_parser
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 21 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.max_health"}],"color":"#5454FC"}]'
#1 × 等级
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 26 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.plus.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.luck"}],"color":"#5454FC"}]'
#减去 1 × 等级
execute if score #tal.o.ITJ.Effects.id tal.str_parser matches 27 run data modify block -29999999 3 20228222 Text3 set value '[{"text":"\\n"},{"translate":"attribute.modifier.take.0","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.str_parser"}},{"translate":"attribute.name.generic.luck"}],"color":"#FC5454"}]'

execute unless data block -29999999 3 20228222 {Text3:'{"text":"none"}'} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.when_drank append from block -29999999 3 20228222 Text3
