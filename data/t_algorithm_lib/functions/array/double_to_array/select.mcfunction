##筛选范围
scoreboard players set #tal.array.double_to_array.num tal.input 0
scoreboard players set #tal.array.double_to_array.select tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.num tal.input matches ..-1 run scoreboard players add #tal.array.double_to_array.select tal.input 1
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.num tal.input matches 1.. run scoreboard players add #tal.array.double_to_array.select tal.input 1
##
scoreboard players set #tal.array.double_to_array.num tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.num tal.input matches ..-1 run scoreboard players add #tal.array.double_to_array.select tal.input 1
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.num tal.input matches 1.. run scoreboard players add #tal.array.double_to_array.select tal.input 1
##
scoreboard players set #tal.array.double_to_array.num tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.num tal.input matches ..-1 run scoreboard players add #tal.array.double_to_array.select tal.input 1
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.num tal.input matches 1.. run scoreboard players add #tal.array.double_to_array.select tal.input 1
##
scoreboard players set #tal.array.double_to_array.num tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.num tal.input matches ..-1 run scoreboard players add #tal.array.double_to_array.select tal.input 1
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.num tal.input matches 1.. run scoreboard players add #tal.array.double_to_array.select tal.input 1
##
scoreboard players set #tal.array.double_to_array.num tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-100000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~100000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.num tal.input matches ..-1 run scoreboard players add #tal.array.double_to_array.select tal.input 1
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.num tal.input matches 1.. run scoreboard players add #tal.array.double_to_array.select tal.input 1
##
scoreboard players set #tal.array.double_to_array.num tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-100000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~100000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.num tal.input matches ..-1 run scoreboard players add #tal.array.double_to_array.select tal.input 1
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.num tal.input matches 1.. run scoreboard players add #tal.array.double_to_array.select tal.input 1
##
scoreboard players set #tal.array.double_to_array.num tal.input 0
execute if score #tal.array.double_to_array.negative tal.input matches 0 positioned ~ ~-10000000000 ~ if predicate t_algorithm_lib:down_zero run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.input matches 1 positioned ~ ~10000000000 ~ unless predicate t_algorithm_lib:down_zero run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down

execute if score #tal.array.double_to_array.negative tal.input matches 0 if score #tal.array.double_to_array.num tal.input matches ..-1 run scoreboard players add #tal.array.double_to_array.select tal.input 1
execute if score #tal.array.double_to_array.negative tal.input matches 1 if score #tal.array.double_to_array.num tal.input matches 1.. run scoreboard players add #tal.array.double_to_array.select tal.input 1

##
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 1 run scoreboard players set #tal.array.double_to_array.tier tal.input 308
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 1 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_308
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 2 run scoreboard players set #tal.array.double_to_array.tier tal.input 200
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 2 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_200
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 3 run scoreboard players set #tal.array.double_to_array.tier tal.input 150
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 3 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_150
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 4 run scoreboard players set #tal.array.double_to_array.tier tal.input 100
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 4 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_100
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 5 run scoreboard players set #tal.array.double_to_array.tier tal.input 50
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 5 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_50
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 6 run scoreboard players set #tal.array.double_to_array.tier tal.input 20
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 6 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_20
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 7 run scoreboard players set #tal.array.double_to_array.tier tal.input 10
execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 7 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_10
# execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 7 run scoreboard players set #tal.array.double_to_array.tier tal.input 0
# execute if score #tal.array.double_to_array.end tal.input matches 0 if score #tal.array.double_to_array.select tal.input matches 7 as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/small_start