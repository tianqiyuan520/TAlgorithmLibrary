##
##data modify storage t_algorithm_lib:maths newton_interpolation.func set value [[c0],['+'],[c1],['*'],['('],['x'],['-'],[x0],[')'],...]
data modify storage t_algorithm_lib:maths newton_interpolation.func set value []

data modify storage t_algorithm_lib:maths newton_interpolation.func append value [c0]
data modify storage t_algorithm_lib:maths newton_interpolation.func[-1][] set from storage t_algorithm_lib:maths newton_interpolation.DQ.result[0]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.list set from storage t_algorithm_lib:maths newton_interpolation.DQ.result
data remove storage t_algorithm_lib:maths newton_interpolation.DQ.list[0]

execute store result score #tal.maths.newton_interpolation.count tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list
scoreboard players add #tal.maths.newton_interpolation.xloop tal.input 1
#初始化
execute if score #tal.maths.newton_interpolation.count tal.input matches 1.. run function t_algorithm_lib:maths/newton_interpolation/main_loop