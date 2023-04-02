###获取 给定工具的 当前耐久度
##[自定义]物品
# data modify storage t_algorithm_lib:others get_item_durability.item set value []
#例如
#data modify storage t_algorithm_lib:others get_item_durability.item set from entity tianqiyuan520 SelectedItem
##
scoreboard players set #tal.get_item_durability.durability tal.input 0
scoreboard players set #tal.get_item_durability.tier tal.input 10
scoreboard players set #tal.get_item_durability.is_negative tal.input 0
execute positioned -29999994 4 2022224 run summon armor_stand ~ ~ ~ {CustomName:'"获取工具耐久度"',UUID:[I;0,7523,200,0],ShowArms:1b}
data modify entity 00000000-0000-1d63-0000-00c800000000 HandItems[0] set from storage t_algorithm_lib:others get_item_durability.item
#
execute positioned -29999994 4 2022224 if data entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players set #tal.get_item_durability.is_negative tal.input 1
execute if score #tal.get_item_durability.is_negative tal.input matches 1 run execute store result score #tal.get_item_durability.Damage_ tal.input run data get entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage
execute if score #tal.get_item_durability.is_negative tal.input matches 1 run data modify entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage set value 0
#
execute positioned -29999994 4 2022224 if data entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 unless predicate t_algorithm_lib:check_item_durability_equals_0 run function t_algorithm_lib:others/get_item_durability/loop
#
execute if score #tal.get_item_durability.is_negative tal.input matches 1 run scoreboard players operation #tal.get_item_durability.durability tal.input -= #tal.get_item_durability.Damage_ tal.input

data modify storage t_algorithm_lib:others get_item_durability.item set value []
kill 00000000-0000-1d63-0000-00c800000000

##[结果]记分板
#scoreboard players get #tal.get_item_durability.durability tal.input