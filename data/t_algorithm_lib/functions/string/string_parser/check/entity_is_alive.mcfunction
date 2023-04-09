#创建实体 检查生物完整性

#被检测的 用来存储玩家输入的信息
execute positioned -30000000 4 2022228 unless entity 00000000-0000-1d63-0000-000000000000 run summon area_effect_cloud ~ ~ ~ {Duration:100000,CustomName:'"/me <action>"',UUID:[I;0,7523,0,0]}
#二分法结果的载体
execute positioned -30000000 4 2022228 unless entity 00000000-0000-1d63-0000-000000000001 run summon area_effect_cloud ~ ~ ~ {Tags:["td.char.checker"],Duration:100000,CustomName:'""',UUID:[I;0,7523,0,1]}
#存储 tag list的返回句子 由该实体来进行附魔压扁操作
execute positioned -30000000 4 2022228 unless entity 00000000-0000-1d63-0000-000000000002 run summon area_effect_cloud ~ ~ ~ {Tags:[""],Duration:100000,CustomName:'""',UUID:[I;0,7523,0,2]}


execute positioned -30000000 4 2022228 unless entity 00000000-0000-1d63-0000-000000000003 run summon area_effect_cloud ~ ~ ~ {Tags:[""],Duration:100000,CustomName:'""',UUID:[I;0,7523,0,3]}
execute positioned -30000000 4 2022228 unless entity 00000000-0000-1d63-0000-000000000004 run summon area_effect_cloud ~ ~ ~ {Tags:[""],Duration:100000,CustomName:'""',UUID:[I;0,7523,0,4]}


#需知
#summon minecraft:armor_stand ~ ~ ~ {CustomName:'""',UUID:[I;0,7523,0,0]}
#data get entity 00000000-0000-1d63-0000-000000000000
#summon minecraft:armor_stand ~ ~ ~ {CustomName:'""',UUID:[I;0,7523,0,1]}
#data get entity 00000000-0000-1d63-0000-000000000001