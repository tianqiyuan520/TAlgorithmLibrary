##迭代
tp 00000000-0000-1d63-0000-000600000001 ~ ~ ~

execute store result score #tal.maths.trigonometric_functions.num tal.str_parser run data get entity 00000000-0000-1d63-0000-000600000001 Pos[0] 1000
scoreboard players operation #tal.maths.trigonometric_functions.num tal.str_parser *= #tal.maths.trigonometric_functions.num tal.str_parser

execute unless score #tal.maths.trigonometric_functions.num3 tal.str_parser = #tal.maths.trigonometric_functions.num tal.str_parser if score #tal.maths.trigonometric_functions.num3 tal.str_parser > #tal.maths.trigonometric_functions.num tal.str_parser as 00000000-0000-1d63-0000-000600000001 positioned ^ ^ ^0.01 run function t_algorithm_lib:maths/trigonometric_functions/arc/loop