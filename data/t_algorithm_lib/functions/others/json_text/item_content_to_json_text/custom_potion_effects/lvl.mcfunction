#读取等级
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 0 run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set value '{"text":""}'
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 1 run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set value '{"translate":"potion.potency.1"}'
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set value '{"translate":"potion.potency.2"}'
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 3 run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set value '{"translate":"potion.potency.3"}'
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 4 run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set value '{"translate":"potion.potency.4"}'
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 5 run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set value '{"translate":"potion.potency.5"}'




# 大于11,先解析
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 6.. run data modify block -29999999 3 20228222 Text4 set value '{"translate":"potion.potency.%s","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}}]}'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.Effects.Amplifier tal.input matches 6.. run data modify block -29999999 3 20228222 front_text.messages[3] set value '{"translate":"potion.potency.%s","with":[{"score":{"name": "#tal.o.ITJ.Effects.Amplifier","objective": "tal.input"}}]}'
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches 6.. run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set from block -29999999 3 20228222 Text4
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.Effects.Amplifier tal.input matches 6.. run data modify storage t_algorithm_lib:item_to_json temp.CustomPotionEffects_lvl set from block -29999999 3 20228222 front_text.messages[3]