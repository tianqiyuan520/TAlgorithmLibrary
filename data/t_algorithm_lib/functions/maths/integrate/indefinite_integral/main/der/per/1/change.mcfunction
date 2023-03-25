execute if score #tal.maths.integrate.index tal.str_parser = #tal.maths.integrate.index2 tal.str_parser run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][0] set from storage t_algorithm_lib:maths integrate.main.change
execute if score #tal.maths.integrate.index tal.str_parser = #tal.maths.integrate.index2 tal.str_parser run data modify storage t_algorithm_lib:maths integrate.main_tree[-1][2][0] set value 0



data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0] append from storage t_algorithm_lib:maths integrate.main_tree[-1][0][0]
data remove storage t_algorithm_lib:maths integrate.main_tree[-1][0][0]

data modify storage t_algorithm_lib:maths integrate.main_tree[-1][2] append from storage t_algorithm_lib:maths integrate.main_tree[-1][2][0]
data remove storage t_algorithm_lib:maths integrate.main_tree[-1][2][0]

scoreboard players remove #tal.maths.integrate.index tal.str_parser 1
execute unless score #tal.maths.integrate.index tal.str_parser matches ..1 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/change