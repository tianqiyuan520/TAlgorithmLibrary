##两种tp
execute if score #tal.maths.bezier_curve.f tal.input matches 0 run function t_algorithm_lib:maths/bezier_curve/main/tp1
execute if score #tal.maths.bezier_curve.f tal.input matches 1 run function t_algorithm_lib:maths/bezier_curve/main/tp2

scoreboard players set #tal.maths.bezier_curve.f tal.input 1

data remove storage t_algorithm_lib:maths bezier_curve.Pos_list_[-1]
#show
execute store result score #tal.maths.bezier_curve.count tal.input run data get storage t_algorithm_lib:maths bezier_curve.Pos_list_
execute if score #tal.maths.bezier_curve.count tal.input matches 0..1 at 00000000-0000-1d63-0000-000900000002 run function t_algorithm_lib:maths/bezier_curve/main/show

execute if score #tal.maths.bezier_curve.count tal.input matches 0..1 at 00000000-0000-1d63-0000-000900000002 run function t_algorithm_lib:maths/bezier_curve/main/find


execute if score #tal.maths.bezier_curve.count tal.input matches 2.. run function t_algorithm_lib:maths/bezier_curve/main/loop