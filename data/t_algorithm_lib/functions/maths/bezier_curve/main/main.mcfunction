
##loop


data modify storage t_algorithm_lib:maths bezier_curve.Pos_list_ set from storage t_algorithm_lib:maths bezier_curve.Pos_list
data modify storage t_algorithm_lib:maths bezier_curve.Pos_list_n set value []
data modify storage t_algorithm_lib:maths bezier_curve.Pos_list_n append from storage t_algorithm_lib:maths bezier_curve.Pos_list[-1]
scoreboard players set #tal.maths.bezier_curve.f tal.input 0
function t_algorithm_lib:maths/bezier_curve/main/loop
data modify storage t_algorithm_lib:maths bezier_curve.Pos_list set from storage t_algorithm_lib:maths bezier_curve.Pos_list_n
##



scoreboard players add #tal.maths.bezier_curve.loop tal.input 1

execute if score #tal.maths.bezier_curve.end tal.input matches 0 if score #tal.maths.bezier_curve.loop tal.input < #tal.maths.bezier_curve.time tal.input run function t_algorithm_lib:maths/bezier_curve/main/main
