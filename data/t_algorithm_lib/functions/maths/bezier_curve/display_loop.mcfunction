

data modify entity 00000000-0000-1d63-0000-000900000002 Pos set from storage t_algorithm_lib:maths bezier_curve.list[0]
execute at 00000000-0000-1d63-0000-000900000002 run function t_algorithm_lib:maths/bezier_curve/main/show


data remove storage t_algorithm_lib:maths bezier_curve.list[0]
execute if data storage t_algorithm_lib:maths bezier_curve.list[0] run function t_algorithm_lib:maths/bezier_curve/display_loop