data modify entity 00000000-0000-1d63-0000-000900000001 Pos set from storage t_algorithm_lib:maths bezier_curve.Pos_list[-1]
data modify entity 00000000-0000-1d63-0000-000900000002 Pos set from storage t_algorithm_lib:maths bezier_curve.Pos_list_n[0]

data modify storage t_algorithm_lib:maths bezier_curve.result append from storage t_algorithm_lib:maths bezier_curve.Pos_list_n[0]

execute as 00000000-0000-1d63-0000-000900000002 at @s if entity @e[tag=tal.maths.bezier_curve.1,distance=..0.1] run scoreboard players set #tal.maths.bezier_curve.end tal.input 1