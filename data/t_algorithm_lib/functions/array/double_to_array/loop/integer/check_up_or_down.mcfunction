# execute facing entity 00000000-0000-1d63-0000-000700000002 eyes positioned 0 0 0 as 00000000-0000-1d63-0000-000700000004 run tp ~ ~ ~
##判断角度 +down -up
# execute store result score #tal.array.double_to_array.num tal.input run data get entity 00000000-0000-1d63-0000-000700000004 Rotation[1] 10000
# tp 00000000-0000-1d63-0000-000700000004 0 -10 0

# execute if predicate t_algorithm_lib:down_zero run scoreboard players set #tal.array.double_to_array.num tal.input -100
# execute unless predicate t_algorithm_lib:down_zero run scoreboard players set #tal.array.double_to_array.num tal.input 100
scoreboard players set #tal.array.double_to_array.num tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 if predicate t_algorithm_lib:down_zero run scoreboard players set #tal.array.double_to_array.num tal.input -100
execute if score #tal.array.double_to_array.negative tal.input matches 1 unless predicate t_algorithm_lib:down_zero run scoreboard players set #tal.array.double_to_array.num tal.input 100
