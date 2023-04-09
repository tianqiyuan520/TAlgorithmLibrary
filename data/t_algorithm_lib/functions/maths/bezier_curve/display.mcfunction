function t_algorithm_lib:maths/bezier_curve/init
data modify storage t_algorithm_lib:maths bezier_curve.list set from storage t_algorithm_lib:maths bezier_curve.result
function t_algorithm_lib:maths/bezier_curve/display_loop
execute if score #tal.maths.bezier_curve.always tal.input matches 1 run schedule function t_algorithm_lib:maths/bezier_curve/display 2s replace