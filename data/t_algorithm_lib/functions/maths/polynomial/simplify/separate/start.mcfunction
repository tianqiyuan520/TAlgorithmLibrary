
execute store result score #tal.maths.polynomial.temp.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.separation
scoreboard players set #tal.maths.polynomial.temp.tier tal.input 0
scoreboard players set #tal.maths.polynomial.temp.is_tier tal.input 0
scoreboard players set #tal.maths.polynomial.temp.is_down_tier tal.input 0
data remove storage t_algorithm_lib:maths polynomial.temp.list

execute if score #tal.maths.polynomial.temp.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/separate/loop