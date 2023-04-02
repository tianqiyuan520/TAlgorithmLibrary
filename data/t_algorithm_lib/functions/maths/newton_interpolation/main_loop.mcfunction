data modify storage t_algorithm_lib:maths newton_interpolation.func append value ['+']
data modify storage t_algorithm_lib:maths newton_interpolation.func append value []
data modify storage t_algorithm_lib:maths newton_interpolation.func[-1][] set from storage t_algorithm_lib:maths newton_interpolation.DQ.list[0]

data modify storage t_algorithm_lib:maths newton_interpolation.DQ.list2 set from storage t_algorithm_lib:maths newton_interpolation.input
execute store result score #tal.maths.newton_interpolation.count tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list2
scoreboard players operation #tal.maths.newton_interpolation.xloop_ tal.input = #tal.maths.newton_interpolation.xloop tal.input
execute if score #tal.maths.newton_interpolation.count tal.input matches 1.. run function t_algorithm_lib:maths/newton_interpolation/x_loop



scoreboard players add #tal.maths.newton_interpolation.xloop tal.input 1
data remove storage t_algorithm_lib:maths newton_interpolation.DQ.list[0]
execute store result score #tal.maths.newton_interpolation.count tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list
execute if score #tal.maths.newton_interpolation.count tal.input matches 1.. run function t_algorithm_lib:maths/newton_interpolation/main_loop