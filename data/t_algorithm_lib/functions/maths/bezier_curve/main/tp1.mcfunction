data modify entity 00000000-0000-1d63-0000-000900000001 Pos set from storage t_algorithm_lib:maths bezier_curve.Pos_list_[-1]
data modify entity 00000000-0000-1d63-0000-000900000002 Pos set from storage t_algorithm_lib:maths bezier_curve.Pos_list_[-2]
execute as 00000000-0000-1d63-0000-000900000002 at @s facing entity 00000000-0000-1d63-0000-000900000001 feet run tp ~ ~ ~
execute as 00000000-0000-1d63-0000-000900000002 at @s run tp ^ ^ ^0.1

data modify storage t_algorithm_lib:maths bezier_curve.Pos_list_n prepend from entity 00000000-0000-1d63-0000-000900000002 Pos
