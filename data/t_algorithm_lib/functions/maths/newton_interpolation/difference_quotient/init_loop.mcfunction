data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1] append value [[0.0,0.0],[0.0]]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1][-1][0][0] set from storage t_algorithm_lib:maths newton_interpolation.DQ.list[0][0]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1][-1][0][1] set from storage t_algorithm_lib:maths newton_interpolation.DQ.list[0][0]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[-1][-1][1][0] set from storage t_algorithm_lib:maths newton_interpolation.DQ.list[0][1]


data remove storage t_algorithm_lib:maths newton_interpolation.DQ.list[0]
scoreboard players remove #tal.maths.newton_interpolation.count tal.input 1
execute if score #tal.maths.newton_interpolation.count tal.input matches 1.. run function t_algorithm_lib:maths/newton_interpolation/difference_quotient/init_loop