
execute store result score #tal.maths.laplace_smoothing.n tal.input run data get storage t_algorithm_lib:maths laplace_smoothing.list[0] 1000
scoreboard players add #tal.maths.laplace_smoothing.n tal.input 1000
execute store result storage t_algorithm_lib:maths laplace_smoothing.list[0] int 1.0 run scoreboard players operation #tal.maths.laplace_smoothing.n tal.input /= #tal.maths.laplace_smoothing.num tal.input

data modify storage t_algorithm_lib:maths laplace_smoothing.list append from storage t_algorithm_lib:maths laplace_smoothing.list[0]
data remove storage t_algorithm_lib:maths laplace_smoothing.list[0]
scoreboard players remove #tal.maths.laplace_smoothing.count tal.input 1
execute if score #tal.maths.laplace_smoothing.count tal.input matches 1.. run function t_algorithm_lib:maths/laplace_smoothing/loop
