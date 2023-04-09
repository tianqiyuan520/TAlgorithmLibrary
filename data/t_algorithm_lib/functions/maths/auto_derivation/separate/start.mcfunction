
execute store result score #tal.maths.derivation.list_count tal.input run data get storage t_algorithm_lib:maths auto_derivation.temp.separation
scoreboard players set #tal.maths.derivation.tier tal.input 0
scoreboard players set #tal.maths.derivation.is_tier tal.input 0
scoreboard players set #tal.maths.derivation.is_down_tier tal.input 0
data remove storage t_algorithm_lib:maths auto_derivation.temp.list
data modify storage t_algorithm_lib:maths auto_derivation.separation set value []

execute if score #tal.maths.derivation.list_count tal.input matches 1.. run function t_algorithm_lib:maths/auto_derivation/separate/loop