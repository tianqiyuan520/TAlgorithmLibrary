data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1] append value [[0.0,0.0],[0.0]]


data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1][-1][0][0] set from storage t_algorithm_lib:maths newton_interpolation.DQ.list[0][0][0]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1][-1][0][1] set from storage t_algorithm_lib:maths newton_interpolation.DQ.list[1][0][1]

execute store result score #tal.maths.newton_interpolation.num tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list[0][0][0] 1000
execute store result score #tal.maths.newton_interpolation.num2 tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list[1][0][1] 1000
scoreboard players operation #tal.maths.newton_interpolation.num tal.input -= #tal.maths.newton_interpolation.num2 tal.input
#
execute store result score #tal.maths.newton_interpolation.num3 tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list[0][1][0] 1000
execute store result score #tal.maths.newton_interpolation.num4 tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list[1][1][0] 1000
scoreboard players operation #tal.maths.newton_interpolation.num3 tal.input -= #tal.maths.newton_interpolation.num4 tal.input
scoreboard players set #1000 tal.input 1000
scoreboard players operation #tal.maths.newton_interpolation.num3 tal.input *= #1000 tal.input
#
execute store result storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1][-1][1][0] double 0.001 run scoreboard players operation #tal.maths.newton_interpolation.num3 tal.input /= #tal.maths.newton_interpolation.num tal.input

data remove storage t_algorithm_lib:maths newton_interpolation.DQ.list[0]
scoreboard players remove #tal.maths.newton_interpolation.count tal.input 1
execute if score #tal.maths.newton_interpolation.count tal.input matches 2.. run function t_algorithm_lib:maths/newton_interpolation/difference_quotient/main_loop