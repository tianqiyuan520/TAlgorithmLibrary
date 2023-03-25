


execute store result score #tal.get_item_durability.Damage tal.str_parser run data get entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage

execute if score #tal.get_item_durability.tier tal.str_parser matches 0.. run function t_algorithm_lib:others/get_item_durability/check

execute if score #tal.get_item_durability.tier tal.str_parser matches ..-1 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 1
execute if score #tal.get_item_durability.tier tal.str_parser matches ..-1 run execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches ..-1 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 1

execute as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_equals_0 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run function t_algorithm_lib:others/get_item_durability/loop
