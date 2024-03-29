##CustomPotionEffects:[{Id:1,Amplifier:4,Duration:30}]
##获取时长:
execute store result score #tal.o.ITJ.Effects.seconds tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list[0].Duration 1
execute store result score #tal.o.ITJ.Effects.mins tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list[0].Duration 1
##id
execute store result score #tal.o.ITJ.Effects.id tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list[0].Id
##等级
execute store result score #tal.o.ITJ.Effects.Amplifier tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list[0].Amplifier
#等级为负，则取0
execute if score #tal.o.ITJ.Effects.Amplifier tal.input matches ..0 run scoreboard players set #tal.o.ITJ.Effects.Amplifier tal.input 0
data modify storage t_algorithm_lib:item_to_json temp.string_list append value '{"text":"\\n"}'
#
scoreboard players set #60 tal.input 60
scoreboard players set #20 tal.input 20
#计算时长:
scoreboard players operation #tal.o.ITJ.Effects.seconds tal.input /= #20 tal.input
scoreboard players operation #tal.o.ITJ.Effects.seconds tal.input %= #60 tal.input
scoreboard players operation #tal.o.ITJ.Effects.mins tal.input /= #20 tal.input
scoreboard players operation #tal.o.ITJ.Effects.mins tal.input /= #60 tal.input
function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/id
function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/lvl
execute if score #tal.o.ITJ.Effects.seconds tal.input matches 1..9 run data modify block -29999999 3 20228222 Text4 set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true},{"translate":"(%s:0%s)","with":[{"score":{"name": "#tal.o.ITJ.Effects.mins","objective": "tal.input"}},{"score":{"name": "#tal.o.ITJ.Effects.seconds","objective": "tal.input"}}]}]'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.Effects.seconds tal.input matches 1..9 run data modify block -29999999 3 20228222 front_text.messages[3] set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true},{"translate":"(%s:0%s)","with":[{"score":{"name": "#tal.o.ITJ.Effects.mins","objective": "tal.input"}},{"score":{"name": "#tal.o.ITJ.Effects.seconds","objective": "tal.input"}}]}]'

execute unless score #tal.o.ITJ.Effects.seconds tal.input matches 1..9 run data modify block -29999999 3 20228222 Text4 set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true},{"translate":"(%s:%s)","with":[{"score":{"name": "#tal.o.ITJ.Effects.mins","objective": "tal.input"}},{"score":{"name": "#tal.o.ITJ.Effects.seconds","objective": "tal.input"}}]}]'
execute if score #tal.sign_version tal.input matches 2 unless score #tal.o.ITJ.Effects.seconds tal.input matches 1..9 run data modify block -29999999 3 20228222 front_text.messages[3] set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true},{"translate":"(%s:%s)","with":[{"score":{"name": "#tal.o.ITJ.Effects.mins","objective": "tal.input"}},{"score":{"name": "#tal.o.ITJ.Effects.seconds","objective": "tal.input"}}]}]'

execute if score #tal.o.ITJ.Effects.seconds tal.input matches ..1 if score #tal.o.ITJ.Effects.mins tal.input matches ..1 run data modify block -29999999 3 20228222 Text4 set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true}]'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.Effects.seconds tal.input matches ..1 if score #tal.o.ITJ.Effects.mins tal.input matches ..1 run data modify block -29999999 3 20228222 front_text.messages[3] set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true}]'

execute if score #tal.o.ITJ.Effects.seconds tal.input matches ..1 unless score #tal.o.ITJ.Effects.mins tal.input matches ..1 run data modify block -29999999 3 20228222 Text4 set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true},{"translate":"(%s:00)","with":[{"score":{"name": "#tal.o.ITJ.Effects.mins","objective": "tal.input"}}]}]'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.Effects.seconds tal.input matches ..1 unless score #tal.o.ITJ.Effects.mins tal.input matches ..1 run data modify block -29999999 3 20228222 front_text.messages[3] set value '[{"nbt":"temp.CustomPotionEffects_name","storage": "t_algorithm_lib:item_to_json","interpret": true},{"text":" "},{"nbt":"temp.CustomPotionEffects_lvl","storage": "t_algorithm_lib:item_to_json","interpret": true},{"translate":"(%s:00)","with":[{"score":{"name": "#tal.o.ITJ.Effects.mins","objective": "tal.input"}}]}]'

#判断是否为有害效果
function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/is_bad_effect
execute if score #tal.o.ITJ.Effects.isBad tal.input matches 0 run data modify block -29999999 3 20228222 Text4 set value '{"nbt":"Text4","block":"-29999999 3 20228222","interpret": true,"color":"#5454FC"}'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.Effects.isBad tal.input matches 0 run data modify block -29999999 3 20228222 front_text.messages[3] set value '{"nbt":"front_text.messages[3]","block":"-29999999 3 20228222","interpret": true,"color":"#5454FC"}'

execute if score #tal.o.ITJ.Effects.isBad tal.input matches 1 run data modify block -29999999 3 20228222 Text4 set value '{"nbt":"Text4","block":"-29999999 3 20228222","interpret": true,"color":"#FC5454"}'
execute if score #tal.sign_version tal.input matches 2 if score #tal.o.ITJ.Effects.isBad tal.input matches 1 run data modify block -29999999 3 20228222 front_text.messages[3] set value '{"nbt":"front_text.messages[3]","block":"-29999999 3 20228222","interpret": true,"color":"#FC5454"}'

data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 Text4
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.string_list append from block -29999999 3 20228222 front_text.messages[3]

##当生效后
function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/when_drank

data remove storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list[0]

execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list
execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/custom_potion_effects/loop