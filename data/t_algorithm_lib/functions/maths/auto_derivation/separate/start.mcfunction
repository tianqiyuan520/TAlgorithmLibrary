
execute store result score #tal.maths.derivation.list_count tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.temp.separation
scoreboard players set #tal.maths.derivation.tier tal.str_parser 0
scoreboard players set #tal.maths.derivation.is_tier tal.str_parser 0
scoreboard players set #tal.maths.derivation.is_down_tier tal.str_parser 0
data remove storage t_algorithm_lib:maths auto_derivation.temp.list
data modify storage t_algorithm_lib:maths auto_derivation.separation set value []

execute if score #tal.maths.derivation.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/auto_derivation/separate/loop