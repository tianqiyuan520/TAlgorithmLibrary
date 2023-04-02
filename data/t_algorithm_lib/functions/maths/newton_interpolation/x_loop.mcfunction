##x-x0 * x-x1 * ... x-x_(n-1)
data modify storage t_algorithm_lib:maths newton_interpolation.func append value ['*']
data modify storage t_algorithm_lib:maths newton_interpolation.func append value ['(']
data modify storage t_algorithm_lib:maths newton_interpolation.func append value ['x']
data modify storage t_algorithm_lib:maths newton_interpolation.func append value ['-']
data modify storage t_algorithm_lib:maths newton_interpolation.func append value ['x']
data modify storage t_algorithm_lib:maths newton_interpolation.func[-1][] set from storage t_algorithm_lib:maths newton_interpolation.DQ.list2[0][0]
data modify storage t_algorithm_lib:maths newton_interpolation.func append value [')']




scoreboard players remove #tal.maths.newton_interpolation.xloop_ tal.input 1
data remove storage t_algorithm_lib:maths newton_interpolation.DQ.list2[0]
execute store result score #tal.maths.newton_interpolation.count tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list2
execute if score #tal.maths.newton_interpolation.count tal.input matches 1.. if score #tal.maths.newton_interpolation.xloop_ tal.input matches 1.. run function t_algorithm_lib:maths/newton_interpolation/x_loop
