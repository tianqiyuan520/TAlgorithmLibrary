
execute store result score #tal.maths.polynomial.temp.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.separation
scoreboard players set #tal.maths.polynomial.temp.tier tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.is_tier tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.is_down_tier tal.str_parser 0
data remove storage t_algorithm_lib:maths polynomial.temp.list

execute if score #tal.maths.polynomial.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/separate/loop