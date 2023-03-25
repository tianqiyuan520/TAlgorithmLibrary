execute if score #tal.get_item_durability.tier tal.str_parser matches 10 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 2000000000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 10 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 2000000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 10 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 2000000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 10 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 9 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 1000000000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 9 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 1000000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 9 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 1000000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 9 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 8 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 500000000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 8 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 500000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 8 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 500000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 8 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 7 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 100000000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 7 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 100000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 7 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 100000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 7 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 6 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 50000000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 6 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 50000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 6 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 50000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 6 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 5 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 10000000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 5 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 10000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 5 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 10000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 5 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 4 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 1000000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 4 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 1000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 4 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 1000000
execute if score #tal.get_item_durability.tier tal.str_parser matches 4 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 3 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 100000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 3 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 100000
execute if score #tal.get_item_durability.tier tal.str_parser matches 3 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 100000
execute if score #tal.get_item_durability.tier tal.str_parser matches 3 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 2 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 10000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 2 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 10000
execute if score #tal.get_item_durability.tier tal.str_parser matches 2 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 10000
execute if score #tal.get_item_durability.tier tal.str_parser matches 2 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 1 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 1000
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 1 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 1000
execute if score #tal.get_item_durability.tier tal.str_parser matches 1 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 1000
execute if score #tal.get_item_durability.tier tal.str_parser matches 1 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser

execute if score #tal.get_item_durability.tier tal.str_parser matches 0 run scoreboard players add #tal.get_item_durability.Damage tal.str_parser 100
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
execute if score #tal.get_item_durability.tier tal.str_parser matches 0 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.Damage tal.str_parser 100
execute if score #tal.get_item_durability.tier tal.str_parser matches 0 as 00000000-0000-1d63-0000-00c800000000 unless predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players add #tal.get_item_durability.durability tal.str_parser 100
execute if score #tal.get_item_durability.tier tal.str_parser matches 0 as 00000000-0000-1d63-0000-00c800000000 if predicate t_algorithm_lib:check_item_durability_smaller_0 run scoreboard players remove #tal.get_item_durability.tier tal.str_parser 1
execute store result entity 00000000-0000-1d63-0000-00c800000000 HandItems[0].tag.Damage int 1 run scoreboard players get #tal.get_item_durability.Damage tal.str_parser
