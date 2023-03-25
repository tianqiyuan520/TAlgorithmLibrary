
execute store result score #tal.maths.integrate.list_count tal.str_parser run data get storage t_algorithm_lib:maths integrate.temp.separation
scoreboard players set #tal.maths.integrate.tier tal.str_parser 0
scoreboard players set #tal.maths.integrate.is_tier tal.str_parser 0
scoreboard players set #tal.maths.integrate.is_down_tier tal.str_parser 0
data remove storage t_algorithm_lib:maths integrate.temp.list
data modify storage t_algorithm_lib:maths integrate.separation set value []

execute if score #tal.maths.integrate.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/loop