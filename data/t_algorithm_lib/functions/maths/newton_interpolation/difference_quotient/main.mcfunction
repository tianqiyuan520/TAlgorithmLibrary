
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.list set from storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list append value []

execute store result score #tal.maths.newton_interpolation.count tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list
execute if score #tal.maths.newton_interpolation.count tal.input matches 1.. run function t_algorithm_lib:maths/newton_interpolation/difference_quotient/main_loop

execute store result score #tal.maths.newton_interpolation.count tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1]
execute unless score #tal.maths.newton_interpolation.count tal.input matches 2.. run scoreboard players set #tal.maths.newton_interpolation.end tal.input 1

execute if score #tal.maths.newton_interpolation.time_ tal.input < #tal.maths.newton_interpolation.time tal.input if score #tal.maths.newton_interpolation.end tal.input matches 0 run function t_algorithm_lib:maths/newton_interpolation/difference_quotient/main